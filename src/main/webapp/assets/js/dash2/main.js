/***
Metronic AngularJS App Main Script
***/

/* Metronic App */
var MetronicApp = angular.module("MetronicApp", [
    "ui.router", 
    "ui.bootstrap", 
    "oc.lazyLoad",  
    "ngSanitize"
]); 

/* Configure ocLazyLoader(refer: https://github.com/ocombe/ocLazyLoad) */
MetronicApp.config(['$ocLazyLoadProvider', function($ocLazyLoadProvider) {
    $ocLazyLoadProvider.config({
        // global configs go here
    });
}]);

//AngularJS v1.3.x workaround for old style controller declarition in HTML
MetronicApp.config(['$controllerProvider', function($controllerProvider) {
  // this option might be handy for migrating old apps, but please don't use it
  // in new ones!
  $controllerProvider.allowGlobals();
}]);

/********************************************
 END: BREAKING CHANGE in AngularJS v1.3.x:
*********************************************/

/* Setup global settings */
MetronicApp.factory('settings', ['$rootScope', function($rootScope) {
    // supported languages
    var settings = {
        layout: {
            pageSidebarClosed: false, // sidebar menu state
            pageContentWhite: true, // set page content layout
            pageBodySolid: false, // solid body color state
            pageAutoScrollOnLoad: 1000 // auto scroll to top on page load
        },
        assetsPath: 'assets',
        globalPath: 'assets/dash2/global',
        layoutPath: 'assets/dash2/layouts/layout2',
    };

    $rootScope.settings = settings;

    return settings;
}]);

/* Setup App Main Controller */
MetronicApp.controller('AppController', ['$scope', '$rootScope', function($scope, $rootScope) {
    $scope.$on('$viewContentLoaded', function() {
        //App.initComponents(); // init core components
        //Layout.init(); //  Init entire layout(header, footer, sidebar, etc) on page load if the partials included in server side instead of loading with ng-include directive 
    });
}]);

/***
Layout Partials.
By default the partials are loaded through AngularJS ng-include directive. In case they loaded in server side(e.g: PHP include function) then below partial 
initialization can be disabled and Layout.init() should be called on page load complete as explained above.
***/

/* Setup Layout Part - Header */
MetronicApp.controller('HeaderController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initHeader(); // init header
    });
}]);

/* Setup Layout Part - Sidebar */
MetronicApp.controller('SidebarController', ['$state', '$scope', function($state, $scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initSidebar($state); // init sidebar
    });
}]);

/* Setup Layout Part - Quick Sidebar */
MetronicApp.controller('QuickSidebarController', ['$scope', function($scope) {    
    $scope.$on('$includeContentLoaded', function() {
       setTimeout(function(){
            QuickSidebar.init(); // init quick sidebar        
        }, 2000)
    });
}]);

/* Setup Layout Part - Theme Panel */
MetronicApp.controller('ThemePanelController', ['$scope', function($scope) {    
    $scope.$on('$includeContentLoaded', function() {
        Demo.init(); // init theme panel
    });
}]);

/* Setup Layout Part - Footer */
MetronicApp.controller('FooterController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initFooter(); // init footer
    });
}]);

/* Setup Rounting For All Pages */
MetronicApp.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
    // Redirect any unmatched url
    $urlRouterProvider.otherwise("/dashboard.html");  

    $stateProvider
        // Dashboard
        .state('dashboard', {
            url: "/dashboard.html",
            templateUrl: "assets/dash2/views/dashboard.html",
            data: {pageTitle: 'Admin Dashboard Template'},
            controller: "DashboardController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'assets/dash2/global/plugins/morris/morris.css',
                            'assets/dash2/global/plugins/morris/morris.min.js',
                            'assets/dash2/global/plugins/morris/raphael-min.js',
                            'assets/dash2/global/plugins/jquery.sparkline.min.js',

                            'assets/dash2/pages/scripts/dashboard.js',
                            'assets/js/dash2/controllers/DashboardController.js',
                        ] 
                    });
                }]
            }
        })
        // Blank Page
        .state('blank', {
            url: "/blank",
            templateUrl: "assets/dash2/views/blank.html",
            data: {pageTitle: 'Blank Page Template'},
            controller: "BlankController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'assets/js/dash2/controllers/BlankController.js'
                        ] 
                    });
                }]
            }
        })
        // AngularJS plugins
        .state('fileupload', {
            url: "/file_upload.html",
            templateUrl: "assets/dash2/views/file_upload.html",
            data: {pageTitle: 'AngularJS File Upload'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'angularFileUpload',
                        files: [
                            'assets/dash2/global/plugins/angularjs/plugins/angular-file-upload/angular-file-upload.min.js',
                        ] 
                    }, {
                        name: 'MetronicApp',
                        files: [
                            'assets/js/dash2/controllers/GeneralPageController.js'
                        ]
                    }]);
                }]
            }
        })
        // UI Select
        .state('uiselect', {
            url: "/ui_select.html",
            templateUrl: "assets/dash2/views/ui_select.html",
            data: {pageTitle: 'AngularJS Ui Select'},
            controller: "UISelectController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'ui.select',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'assets/dash2/global/plugins/angularjs/plugins/ui-select/select.min.css',
                            'assets/dash2/global/plugins/angularjs/plugins/ui-select/select.min.js'
                        ] 
                    }, {
                        name: 'MetronicApp',
                        files: [
                            'assets/js/dash2/controllers/UISelectController.js'
                        ] 
                    }]);
                }]
            }
        })
        // UI Bootstrap
        .state('uibootstrap', {
            url: "/ui_bootstrap.html",
            templateUrl: "assets/dash2/views/ui_bootstrap.html",
            data: {pageTitle: 'AngularJS UI Bootstrap'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'MetronicApp',
                        files: [
                            'assets/js/dash2/controllers/GeneralPageController.js'
                        ] 
                    }]);
                }] 
            }
        })
        /*// Tree View
        .state('tree', {
            url: "/tree",
            templateUrl: "assets/dash2/views/tree.html",
            data: {pageTitle: 'jQuery Tree View'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'assets/dash2/global/plugins/jstree/dist/themes/default/style.min.css',

                            'assets/dash2/global/plugins/jstree/dist/jstree.min.js',
                            'assets/dash2/pages/scripts/ui-tree.min.js',
                            'assets/js/dash2/controllers/GeneralPageController.js'
                        ] 
                    }]);
                }] 
            }
        })   

        // Form Tools
        .state('formtools', {
            url: "/form-tools",
            templateUrl: "assets/dash2/views/form_tools.html",
            data: {pageTitle: 'Form Tools'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'assets/dash2/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css',
                            'assets/dash2/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css',
                            'assets/dash2/global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css',
                            'assets/dash2/global/plugins/typeahead/typeahead.css',

                            'assets/dash2/global/plugins/fuelux/js/spinner.min.js',
                            'assets/dash2/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js',
                            'assets/dash2/global/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js',
                            'assets/dash2/global/plugins/jquery.input-ip-address-control-1.0.min.js',
                            'assets/dash2/global/plugins/bootstrap-pwstrength/pwstrength-bootstrap.min.js',
                            'assets/dash2/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js',
                            'assets/dash2/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js',
                            'assets/dash2/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js',
                            'assets/dash2/global/plugins/typeahead/handlebars.min.js',
                            'assets/dash2/global/plugins/typeahead/typeahead.bundle.min.js',
                            'assets/dash2/pages/scripts/components-form-tools-2.min.js',

                            'assets/js/dash2/controllers/GeneralPageController.js'
                        ] 
                    }]);
                }] 
            }
        })        

        // Date & Time Pickers
        .state('pickers', {
            url: "/pickers",
            templateUrl: "assets/dash2/views/pickers.html",
            data: {pageTitle: 'Date & Time Pickers'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'assets/dash2/global/plugins/clockface/css/clockface.css',
                            'assets/dash2/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css',
                            'assets/dash2/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css',
                            'assets/dash2/global/plugins/bootstrap-colorpicker/css/colorpicker.css',
                            'assets/dash2/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css',

                            'assets/dash2/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js',
                            'assets/dash2/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js',
                            'assets/dash2/global/plugins/clockface/js/clockface.js',
                            'assets/dash2/global/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js',
                            'assets/dash2/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js',

                            'assets/dash2/pages/scripts/components-date-time-pickers.min.js',

                            'assets/js/dash2/controllers/GeneralPageController.js'
                        ] 
                    }]);
                }] 
            }
        })

        // Custom Dropdowns
        .state('dropdowns', {
            url: "/dropdowns",
            templateUrl: "assets/dash2/views/dropdowns.html",
            data: {pageTitle: 'Custom Dropdowns'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'assets/dash2/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                            'assets/dash2/global/plugins/select2/css/select2.min.css',
                            'assets/dash2/global/plugins/select2/css/select2-bootstrap.min.css',

                            'assets/dash2/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                            'assets/dash2/global/plugins/select2/js/select2.full.min.js',

                            'assets/dash2/pages/scripts/components-bootstrap-select.min.js',
                            'assets/dash2/pages/scripts/components-select2.min.js',

                            'assets/js/dash2/controllers/GeneralPageController.js'
                        ] 
                    }]);
                }] 
            }
        }) 

        /!*!// Advanced Datatables
        .state('datatablesmanaged', {
            url: "/datatables/managed.html",
            templateUrl: "assets/dash2/views/datatables/managed.html",
            data: {pageTitle: 'Advanced Datatables'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [                             
                            '.assets/dash2/global/plugins/datatables/datatables.min.css',
                            '.assets/dash2/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css',

                            '.assets/dash2/global/plugins/datatables/datatables.all.min.js',

                            '../assets/pages/scripts/table-datatables-managed.min.js',

                            'assets/js/dash2/controllers/GeneralPageController.js'
                        ]
                    });
                }]
            }
        })

        // Ajax Datetables
        .state('datatablesajax', {
            url: "/datatables/ajax.html",
            templateUrl: "assets/dash2/views/datatables/ajax.html",
            data: {pageTitle: 'Ajax Datatables'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'assets/dash2/global/plugins/datatables/datatables.min.css',
                            'assets/dash2/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css',
                            'assets/dash2/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css',

                            'assets/dash2/global/plugins/datatables/datatables.all.min.js',
                            'assets/dash2/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js',
                            'assets/dash2/global/scripts/datatable.js',

                            'js/scripts/table-ajax.js',
                            'assets/js/dash2/controllers/GeneralPageController.js'
                        ]
                    });
                }]
            }
        })*!/

        // User Profile
        .state("profile", {
            url: "/profile",
            templateUrl: "assets/dash2/views/profile/main.html",
            data: {pageTitle: 'User Profile'},
            controller: "UserProfileController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'assets/dash2/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css',
                            '../assets/pages/css/profile.css',
                            
                            'assets/dash2/global/plugins/jquery.sparkline.min.js',
                            'assets/dash2/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js',

                            'assets/dash2/pages/scripts/profile.min.js',

                            'assets/js/dash2/controllers/UserProfileController.js'
                        ]                    
                    });
                }]
            }
        })

        // User Profile Dashboard
        .state("profile.dashboard", {
            url: "/dashboard",
            templateUrl: "assets/dash2/views/profile/dashboard.html",
            data: {pageTitle: 'User Profile'}
        })

        // User Profile Account
        .state("profile.account", {
            url: "/account",
            templateUrl: "assets/dash2/views/profile/account.html",
            data: {pageTitle: 'User Account'}
        })

        // User Profile Help
        .state("profile.help", {
            url: "/help",
            templateUrl: "assets/dash2/views/profile/help.html",
            data: {pageTitle: 'User Help'}      
        })
*/
        // Todo
   /*     .state('todo', {
            url: "/todo",
            templateUrl: "assets/dash2/views/todo.html",
            data: {pageTitle: 'Todo'},
            controller: "TodoController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({ 
                        name: 'MetronicApp',  
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'assets/dash2/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css',
                            '../assets/apps/css/todo-2.css',
                            'assets/dash2/global/plugins/select2/css/select2.min.css',
                            'assets/dash2/global/plugins/select2/css/select2-bootstrap.min.css',

                            'assets/dash2/global/plugins/select2/js/select2.full.min.js',
                            
                            'assets/dash2/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js',

                            '../assets/apps/scripts/todo-2.min.js',

                            'assets/js/dash2/controllers/TodoController.js'
                        ]                    
                    });
                }]
            }
        })*/

}]);

/* Init global settings and run the app */
MetronicApp.run(["$rootScope", "settings", "$state", function($rootScope, settings, $state) {
    $rootScope.$state = $state; // state to be accessed from view
    $rootScope.$settings = settings; // state to be accessed from view
}]);