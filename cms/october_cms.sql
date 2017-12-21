-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2017 at 11:55 AM
-- Server version: 10.0.31-MariaDB-0ubuntu0.16.04.2
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `october_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '27.5.224.74', '2017-10-31 09:47:08', '2017-10-31 09:47:08'),
(2, 1, '103.252.202.73', '2017-10-31 12:26:21', '2017-10-31 12:26:21'),
(3, 1, '203.118.13.169', '2017-11-01 09:10:26', '2017-11-01 09:10:26'),
(4, 1, '42.99.164.91', '2017-11-01 09:58:21', '2017-11-01 09:58:21'),
(5, 1, '27.5.238.91', '2017-12-11 13:21:24', '2017-12-11 13:21:24'),
(6, 1, '122.11.135.239', '2017-12-12 02:51:50', '2017-12-12 02:51:50'),
(7, 1, '122.11.135.239', '2017-12-12 02:52:59', '2017-12-12 02:52:59'),
(8, 1, '122.11.135.239', '2017-12-12 08:24:03', '2017-12-12 08:24:03'),
(9, 1, '27.5.225.51', '2017-12-12 08:24:18', '2017-12-12 08:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`, `is_superuser`) VALUES
(1, 'Admin', 'User', 'admin', 'admin@mobellotech.com', '$2y$10$yM0K1k6ZnRrxLP2SC7eriu1cTOnOtDf.zzwJ17K/MJTnOG3RJSmHu', NULL, '$2y$10$bI/KEcDe7qXoWQkR6VjLzuBYQqD/p9zjTMuQ4DuyTZzNULC1qPQYi', NULL, '', 1, NULL, '2017-12-12 08:24:18', '2017-10-31 07:16:57', '2017-12-12 08:24:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', NULL, '2017-10-31 07:16:57', '2017-10-31 07:16:57', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '27.5.224.74', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '103.252.202.73', 0, NULL, 0, NULL, 0, NULL),
(3, 1, '203.118.13.169', 0, NULL, 0, NULL, 0, NULL),
(4, 1, '42.99.164.91', 0, NULL, 0, NULL, 0, NULL),
(5, 1, '27.5.238.91', 0, NULL, 0, NULL, 0, NULL),
(6, 1, '122.11.135.239', 0, NULL, 0, NULL, 0, NULL),
(7, 1, '27.5.225.51', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'jumplink-viola', '{"color":"blue","site_name":"\\u4e95Cashtag","company_name":"\\u4e95Cashtag","phone_number":"+01 101 01 01 01 01","email_address":"info@domain.ltd","bs4-white":"#fff","bs4-black":"#000","bs4-red":"#d9534f","bs4-orange":"#f0ad4e","bs4-yellow":"#ffd500","bs4-green":"#5cb85c","bs4-blue":"#0275d8","bs4-teal":"#5bc0de","bs4-pink":"#ff5b77","bs4-purple":"#613d7c","bs4-gray-dark":"#292b2c","bs4-gray":"#464a4c","bs4-gray-light":"#636c72","bs4-gray-lighter":"#eceeef","bs4-gray-lightest":"#f7f7f9","bs4-brand-primary":"$blue","bs4-brand-success":"$green","bs4-brand-info":"$teal","bs4-brand-warning":"$orange","bs4-brand-danger":"$red","bs4-brand-inverse":"$gray-dark","bs4-enable-rounded":"1","bs4-enable-shadows":"0","bs4-enable-gradients":"0","bs4-enable-transitions":"1","bs4-enable-hover-media-query":"0","bs4-enable-grid-classes":"1","bs4-enable-print-styles":"1","bs4-spacer":"1rem","bs4-spacer-x":"$spacer","bs4-spacer-y":"$spacer","bs4-spacers-x-0":"0","bs4-spacers-y-0":"0","bs4-spacers-x-1":"$spacer-x * .25","bs4-spacers-y-1":"$spacer-y * .25","bs4-spacers-x-2":"($spacer-x * .5)","bs4-spacers-y-2":"($spacer-y * .5)","bs4-spacers-x-3":"($spacer-x)","bs4-spacers-y-3":"($spacer-y)","bs4-spacers-x-4":"($spacer-x * 1.5)","bs4-spacers-y-4":"($spacer-y * 1.5)","bs4-spacers-x-5":"($spacer-x * 3)","bs4-spacers-y-5":"($spacer-y * 3)","bs4-border-width":"1px","bs4-body-bg":"$white","bs4-body-color":"$gray-dark","bs4-inverse-bg":"$gray-dark","bs4-inverse-color":"$gray-lighter","bs4-link-color":"$brand-primary","bs4-link-decoration":"none","bs4-link-hover-color":"darken($link-color, 15%)","bs4-link-hover-decoration":"underline","bs4-grid-breakpoints-xs":"0","bs4-grid-breakpoints-sm":"576px","bs4-grid-breakpoints-md":"768px","bs4-grid-breakpoints-lg":"992px","bs4-grid-breakpoints-xl":"1200px","bs4-container-max-widths-xs":"null","bs4-container-max-widths-sm":"540px","bs4-container-max-widths-md":"720px","bs4-container-max-widths-lg":"960px","bs4-container-max-widths-xl":"1140px","bs4-grid-columns":"12","bs4-grid-gutter-width-base":"30px","bs4-grid-gutter-widths-xs":"$grid-gutter-width-base","bs4-grid-gutter-widths-sm":"$grid-gutter-width-base","bs4-grid-gutter-widths-md":"$grid-gutter-width-base","bs4-grid-gutter-widths-lg":"$grid-gutter-width-base","bs4-grid-gutter-widths-xl":"$grid-gutter-width-base","bs4-font-family-sans-serif":"-apple-system, system-ui, BlinkMacSystemFont, \\"Segoe UI\\", Roboto, \\"Helvetica Neue\\", Arial, sans-serif","bs4-font-family-serif":"Georgia, \\"Times New Roman\\", Times, serif","bs4-font-family-monospace":"Menlo, Monaco, Consolas, \\"Liberation Mono\\", \\"Courier New\\", monospace","bs4-font-family-base":"$font-family-sans-serif","bs4-font-size-root":"16px","bs4-font-size-base":"1rem","bs4-font-size-lg":"1.25rem","bs4-font-size-sm":".875rem","bs4-font-size-xs":".75rem","bs4-font-weight-normal":"normal","bs4-font-weight-bold":"bold","bs4-font-weight-base":"$font-weight-normal","bs4-line-height-base":"1.5","bs4-font-size-h1":"2.5rem","bs4-font-size-h2":"2rem","bs4-font-size-h3":"1.75rem","bs4-font-size-h4":"1.5rem","bs4-font-size-h5":"1.25rem","bs4-font-size-h6":"1rem","bs4-headings-margin-bottom":"($spacer \\/ 2)","bs4-headings-font-family":"inherit","bs4-headings-font-weight":"500","bs4-headings-line-height":"1.1","bs4-headings-color":"inherit","bs4-display1-size":"6rem","bs4-display2-size":"5.5rem","bs4-display3-size":"4.5rem","bs4-display4-size":"3.5rem","bs4-display1-weight":"300","bs4-display2-weight":"300","bs4-display3-weight":"300","bs4-display4-weight":"300","bs4-display-line-height":"$headings-line-height","bs4-lead-font-size":"1.25rem","bs4-lead-font-weight":"300","bs4-small-font-size":"80%","bs4-text-muted":"$gray-light","bs4-abbr-border-color":"$gray-light","bs4-blockquote-small-color":"$gray-light","bs4-blockquote-font-size":"($font-size-base * 1.25)","bs4-blockquote-border-color":"$gray-lighter","bs4-blockquote-border-width":".25rem","bs4-hr-border-color":"rgba($black,.1)","bs4-hr-border-width":"$border-width","bs4-mark-padding":".2em","bs4-dt-font-weight":"$font-weight-bold","bs4-kbd-box-shadow":"inset 0 -.1rem 0 rgba($black,.25)","bs4-nested-kbd-font-weight":"$font-weight-bold","bs4-list-inline-padding":"5px","bs4-line-height-lg":"(4 \\/ 3)","bs4-line-height-sm":"1.5","bs4-border-radius":".25rem","bs4-border-radius-lg":".3rem","bs4-border-radius-sm":".2rem","bs4-component-active-color":"$white","bs4-component-active-bg":"$brand-primary","bs4-caret-width":".3em","bs4-caret-width-lg":"$caret-width","bs4-transition-base":"all .2s ease-in-out","bs4-transition-fade":"opacity .15s linear","bs4-transition-collapse":"height .35s ease","bs4-table-cell-padding":".75rem","bs4-table-sm-cell-padding":".3rem","bs4-table-bg":"transparent","bs4-table-inverse-bg":"$gray-dark","bs4-table-inverse-color":"$body-bg","bs4-table-bg-accent":"rgba($black,.05)","bs4-table-bg-hover":"rgba($black,.075)","bs4-table-bg-active":"$table-bg-hover","bs4-table-head-bg":"$gray-lighter","bs4-table-head-color":"$gray","bs4-table-border-width":"$border-width","bs4-table-border-color":"$gray-lighter","bs4-btn-padding-x":"1rem","bs4-btn-padding-y":".5rem","bs4-btn-line-height":"1.25","bs4-btn-font-weight":"$font-weight-normal","bs4-btn-box-shadow":"inset 0 1px 0 rgba($white,.15), 0 1px 1px rgba($black,.075)","bs4-btn-focus-box-shadow":"0 0 0 2px rgba($brand-primary, .25)","bs4-btn-active-box-shadow":"inset 0 3px 5px rgba($black,.125)","bs4-btn-primary-color":"$white","bs4-btn-primary-bg":"$brand-primary","bs4-btn-primary-border":"$btn-primary-bg","bs4-btn-secondary-color":"$gray-dark","bs4-btn-secondary-bg":"$white","bs4-btn-secondary-border":"#ccc","bs4-btn-info-color":"$white","bs4-btn-info-bg":"$brand-info","bs4-btn-info-border":"$btn-info-bg","bs4-btn-success-color":"$white","bs4-btn-success-bg":"$brand-success","bs4-btn-success-border":"$btn-success-bg","bs4-btn-warning-color":"$white","bs4-btn-warning-bg":"$brand-warning","bs4-btn-warning-border":"$btn-warning-bg","bs4-btn-danger-color":"$white","bs4-btn-danger-bg":"$brand-danger","bs4-btn-danger-border":"$btn-danger-bg","bs4-btn-link-disabled-color":"$gray-light","bs4-btn-padding-x-sm":".5rem","bs4-btn-padding-y-sm":".25rem","bs4-btn-padding-x-lg":"1.5rem","bs4-btn-padding-y-lg":".75rem","bs4-btn-block-spacing-y":".5rem","bs4-btn-toolbar-margin":".5rem","bs4-btn-border-radius":"$border-radius","bs4-btn-border-radius-lg":"$border-radius-lg","bs4-btn-border-radius-sm":"$border-radius-sm","bs4-btn-transition":"all .2s ease-in-out","bs4-input-padding-x":".75rem","bs4-input-padding-y":".5rem","bs4-input-line-height":"1.25","bs4-input-bg":"$white","bs4-input-bg-disabled":"$gray-lighter","bs4-input-color":"$gray","bs4-input-border-color":"rgba($black,.15)","bs4-input-btn-border-width":"$border-width","bs4-input-box-shadow":"inset 0 1px 1px rgba($black,.075)","bs4-input-border-radius":"$border-radius","bs4-input-border-radius-lg":"$border-radius-lg","bs4-input-border-radius-sm":"$border-radius-sm","bs4-input-bg-focus":"$input-bg","bs4-input-border-focus":"lighten($brand-primary, 25%)","bs4-input-box-shadow-focus":"$input-box-shadow, rgba($input-border-focus, .6)","bs4-input-color-focus":"$input-color","bs4-input-color-placeholder":"$gray-light","bs4-input-padding-x-sm":".5rem","bs4-input-padding-y-sm":".25rem","bs4-input-padding-x-lg":"1.5rem","bs4-input-padding-y-lg":".75rem","bs4-input-height":"(($font-size-base * $input-line-height) + ($input-padding-y * 2))","bs4-input-height-lg":"(($font-size-lg * $line-height-lg) + ($input-padding-y-lg * 2))","bs4-input-height-sm":"(($font-size-sm * $line-height-sm) + ($input-padding-y-sm * 2))","bs4-input-transition":"border-color ease-in-out .15s, box-shadow ease-in-out .15s","bs4-form-text-margin-top":".25rem","bs4-form-feedback-margin-top":"$form-text-margin-top","bs4-form-check-margin-bottom":".5rem","bs4-form-check-input-gutter":"1.25rem","bs4-form-check-input-margin-y":".25rem","bs4-form-check-input-margin-x":".25rem","bs4-form-check-inline-margin-x":".75rem","bs4-form-group-margin-bottom":"$spacer-y","bs4-input-group-addon-bg":"$gray-lighter","bs4-input-group-addon-border-color":"$input-border-color","bs4-cursor-disabled":"not-allowed","bs4-custom-control-gutter":"1.5rem","bs4-custom-control-spacer-x":"1rem","bs4-custom-control-spacer-y":".25rem","bs4-custom-control-indicator-size":"1rem","bs4-custom-control-indicator-margin-y":"(($line-height-base * 1rem) - $custom-control-indicator-size) \\/ -2","bs4-custom-control-indicator-bg":"#ddd","bs4-custom-control-indicator-bg-size":"50% 50%","bs4-custom-control-indicator-box-shadow":"inset 0 .25rem .25rem rgba($black,.1)","bs4-custom-control-disabled-cursor":"$cursor-disabled","bs4-custom-control-disabled-indicator-bg":"$gray-lighter","bs4-custom-control-disabled-description-color":"$gray-light","bs4-custom-control-checked-indicator-color":"$white","bs4-custom-control-checked-indicator-bg":"$brand-primary","bs4-custom-control-checked-indicator-box-shadow":"none","bs4-custom-control-focus-indicator-box-shadow":"0 0 0 1px $body-bg, 0 0 0 3px $brand-primary","bs4-custom-control-active-indicator-color":"$white","bs4-custom-control-active-indicator-bg":"lighten($brand-primary, 35%)","bs4-custom-control-active-indicator-box-shadow":"none","bs4-custom-checkbox-radius":"$border-radius","bs4-custom-checkbox-indeterminate-bg":"$brand-primary","bs4-custom-checkbox-indeterminate-indicator-color":"$custom-control-checked-indicator-color","bs4-custom-checkbox-indeterminate-box-shadow":"none","bs4-custom-radio-radius":"50%","bs4-custom-select-padding-x":".75rem","bs4-custom-select-padding-y":".375rem","bs4-custom-select-indicator-padding":"1rem","bs4-custom-select-line-height":"$input-line-height","bs4-custom-select-color":"$input-color","bs4-custom-select-disabled-color":"$gray-light","bs4-custom-select-bg":"$white","bs4-custom-select-disabled-bg":"$gray-lighter","bs4-custom-select-bg-size":"8px 10px","bs4-custom-select-indicator-color":"#333","bs4-custom-select-border-width":"$input-btn-border-width","bs4-custom-select-border-color":"$input-border-color","bs4-custom-select-border-radius":"$border-radius","bs4-custom-select-focus-border-color":"lighten($brand-primary, 25%)","bs4-custom-select-focus-box-shadow":"inset 0 1px 2px rgba($black, .075), 0 0 5px rgba($custom-select-focus-border-color, .5)","bs4-custom-select-sm-padding-y":".2rem","bs4-custom-select-sm-font-size":"75%","bs4-custom-file-height":"2.5rem","bs4-custom-file-width":"14rem","bs4-custom-file-focus-box-shadow":"0 0 0 .075rem $white, 0 0 0 .2rem $brand-primary","bs4-custom-file-padding-x":".5rem","bs4-custom-file-padding-y":"1rem","bs4-custom-file-line-height":"1.5","bs4-custom-file-color":"$gray","bs4-custom-file-bg":"$white","bs4-custom-file-border-width":"$border-width","bs4-custom-file-border-color":"$input-border-color","bs4-custom-file-border-radius":"$border-radius","bs4-custom-file-box-shadow":"inset 0 .2rem .4rem rgba($black,.05)","bs4-custom-file-button-color":"$custom-file-color","bs4-custom-file-button-bg":"$gray-lighter","bs4-custom-file-text-placeholder-en":"\\"Choose file...\\"","bs4-custom-file-text-placeholder-de":"\\"Datei ausw\\u00e4hlen...\\"","bs4-custom-file-text-button-label-en":"\\"Browse\\"","bs4-custom-file-text-button-label-de":"\\"Durchsuchen\\"","bs4-form-icon-success-color":"$brand-success","bs4-form-icon-warning-color":"$brand-warning","bs4-form-icon-danger-color":"$brand-danger","bs4-dropdown-min-width":"10rem","bs4-dropdown-padding-y":".5rem","bs4-dropdown-margin-top":".125rem","bs4-dropdown-bg":"$white","bs4-dropdown-border-color":"rgba($black,.15)","bs4-dropdown-border-width":"$border-width","bs4-dropdown-divider-bg":"$gray-lighter","bs4-dropdown-box-shadow":"0 .5rem 1rem rgba($black,.175)","bs4-dropdown-link-color":"$gray-dark","bs4-dropdown-link-hover-color":"darken($gray-dark, 5%)","bs4-dropdown-link-hover-bg":"$gray-lightest","bs4-dropdown-link-active-color":"$component-active-color","bs4-dropdown-link-active-bg":"$component-active-bg","bs4-dropdown-link-disabled-color":"$gray-light","bs4-dropdown-item-padding-x":"1.5rem","bs4-dropdown-header-color":"$gray-light","bs4-zindex-dropdown-backdrop":"990","bs4-zindex-navbar":"1000","bs4-zindex-dropdown":"1000","bs4-zindex-fixed":"1030","bs4-zindex-sticky":"1030","bs4-zindex-modal-backdrop":"1040","bs4-zindex-modal":"1050","bs4-zindex-popover":"1060","bs4-zindex-tooltip":"1070","bs4-navbar-border-radius":"$border-radius","bs4-navbar-padding-x":"$spacer","bs4-navbar-padding-y":"($spacer \\/ 2)","bs4-navbar-brand-padding-y":".25rem","bs4-navbar-toggler-padding-x":".75rem","bs4-navbar-toggler-padding-y":".25rem","bs4-navbar-toggler-font-size":"$font-size-lg","bs4-navbar-toggler-border-radius":"$btn-border-radius","bs4-navbar-inverse-color":"rgba($white,.5)","bs4-navbar-inverse-hover-color":"rgba($white,.75)","bs4-navbar-inverse-active-color":"rgba($white,1)","bs4-navbar-inverse-disabled-color":"rgba($white,.25)","bs4-navbar-inverse-toggler-border":"rgba($white,.1)","bs4-navbar-light-color":"rgba($black,.5)","bs4-navbar-light-hover-color":"rgba($black,.7)","bs4-navbar-light-active-color":"rgba($black,.9)","bs4-navbar-light-disabled-color":"rgba($black,.3)","bs4-navbar-light-toggler-border":"rgba($black,.1)","bs4-nav-item-margin":".2rem","bs4-nav-item-inline-spacer":"1rem","bs4-nav-link-padding":".5em 1em","bs4-nav-link-hover-bg":"$gray-lighter","bs4-nav-disabled-link-color":"$gray-light","bs4-nav-disabled-link-hover-color":"$gray-light","bs4-nav-disabled-link-hover-bg":"transparent","bs4-nav-tabs-border-color":"#ddd","bs4-nav-tabs-border-width":"$border-width","bs4-nav-tabs-border-radius":"$border-radius","bs4-nav-tabs-link-hover-border-color":"$gray-lighter","bs4-nav-tabs-active-link-hover-color":"$gray","bs4-nav-tabs-active-link-hover-bg":"$body-bg","bs4-nav-tabs-active-link-hover-border-color":"#ddd","bs4-nav-tabs-justified-link-border-color":"#ddd","bs4-nav-tabs-justified-active-link-border-color":"$body-bg","bs4-nav-pills-border-radius":"$border-radius","bs4-nav-pills-active-link-color":"$component-active-color","bs4-nav-pills-active-link-bg":"$component-active-bg","bs4-pagination-padding-x":".75rem","bs4-pagination-padding-y":".5rem","bs4-pagination-padding-x-sm":".5rem","bs4-pagination-padding-y-sm":".25rem","bs4-pagination-padding-x-lg":"1.5rem","bs4-pagination-padding-y-lg":".75rem","bs4-pagination-line-height":"1.25","bs4-pagination-color":"$link-color","bs4-pagination-bg":"$white","bs4-pagination-border-width":"$border-width","bs4-pagination-border-color":"#ddd","bs4-pagination-hover-color":"$link-hover-color","bs4-pagination-hover-bg":"$gray-lighter","bs4-pagination-hover-border":"#ddd","bs4-pagination-active-color":"$white","bs4-pagination-active-bg":"$brand-primary","bs4-pagination-active-border":"$brand-primary","bs4-pagination-disabled-color":"$gray-light","bs4-pagination-disabled-bg":"$white","bs4-pagination-disabled-border":"#ddd","bs4-jumbotron-padding":"2rem","bs4-jumbotron-bg":"$gray-lighter","bs4-state-success-text":"#3c763d","bs4-state-success-bg":"#dff0d8","bs4-state-success-border":"darken($state-success-bg, 5%)","bs4-state-info-text":"#31708f","bs4-state-info-bg":"#d9edf7","bs4-state-info-border":"darken($state-info-bg, 7%)","bs4-state-warning-text":"#8a6d3b","bs4-state-warning-bg":"#fcf8e3","bs4-mark-bg":"$state-warning-bg","bs4-state-warning-border":"darken($state-warning-bg, 5%)","bs4-state-danger-text":"#a94442","bs4-state-danger-bg":"#f2dede","bs4-state-danger-border":"darken($state-danger-bg, 5%)","bs4-card-spacer-x":"1.25rem","bs4-card-spacer-y":".75rem","bs4-card-border-width":"1px","bs4-card-border-radius":"$border-radius","bs4-card-border-color":"rgba($black,.125)","bs4-card-border-radius-inner":"calc(#{$card-border-radius} - #{$card-border-width})","bs4-card-cap-bg":"$gray-lightest","bs4-card-bg":"$white","bs4-card-link-hover-color":"$white","bs4-card-img-overlay-padding":"1.25rem","bs4-card-deck-margin":"($grid-gutter-width-base \\/ 2)","bs4-card-columns-sm-up-column-gap":"1.25rem","bs4-card-columns-count":"3","bs4-card-columns-gap":"1.25rem","bs4-card-columns-margin":"$card-spacer-y","bs4-tooltip-max-width":"200px","bs4-tooltip-color":"$white","bs4-tooltip-bg":"$black","bs4-tooltip-opacity":".9","bs4-tooltip-padding-y":"3px","bs4-tooltip-padding-x":"8px","bs4-tooltip-margin":"3px","bs4-tooltip-arrow-width":"5px","bs4-tooltip-arrow-color":"$tooltip-bg","bs4-popover-inner-padding":"1px","bs4-popover-bg":"$white","bs4-popover-max-width":"276px","bs4-popover-border-width":"$border-width","bs4-popover-border-color":"rgba($black,.2)","bs4-popover-box-shadow":"0 5px 10px rgba($black,.2)","bs4-popover-title-bg":"darken($popover-bg, 3%)","bs4-popover-title-padding-x":"14px","bs4-popover-title-padding-y":"8px","bs4-popover-content-padding-x":"14px","bs4-popover-content-padding-y":"9px","bs4-popover-arrow-width":"10px","bs4-popover-arrow-color":"$popover-bg","bs4-popover-arrow-outer-width":"($popover-arrow-width + 1px)","bs4-popover-arrow-outer-color":"fade-in($popover-border-color, .05)","bs4-badge-default-bg":"$gray-light","bs4-badge-primary-bg":"$brand-primary","bs4-badge-success-bg":"$brand-success","bs4-badge-info-bg":"$brand-info","bs4-badge-warning-bg":"$brand-warning","bs4-badge-danger-bg":"$brand-danger","bs4-badge-color":"$white","bs4-badge-link-hover-color":"$white","bs4-badge-font-size":"75%","bs4-badge-font-weight":"bold","bs4-badge-padding-x":".4em","bs4-badge-padding-y":".25em","bs4-badge-pill-padding-x":".6em","bs4-badge-pill-border-radius":"10rem","bs4-modal-inner-padding":"15px","bs4-modal-dialog-margin":"10px","bs4-modal-dialog-sm-up-margin-y":"30px","bs4-modal-title-line-height":"$line-height-base","bs4-modal-content-bg":"$white","bs4-modal-content-border-color":"rgba($black,.2)","bs4-modal-content-border-width":"$border-width","bs4-modal-content-xs-box-shadow":"0 3px 9px rgba($black,.5)","bs4-modal-content-sm-up-box-shadow":"0 5px 15px rgba($black,.5)","bs4-modal-backdrop-bg":"$black","bs4-modal-backdrop-opacity":".5","bs4-modal-header-border-color":"$gray-lighter","bs4-modal-footer-border-color":"$modal-header-border-color","bs4-modal-header-border-width":"$modal-content-border-width","bs4-modal-footer-border-width":"$modal-header-border-width","bs4-modal-header-padding":"15px","bs4-modal-lg":"800px","bs4-modal-md":"500px","bs4-modal-sm":"300px","bs4-modal-transition":"transform .3s ease-out","bs4-alert-padding-x":"1.25rem","bs4-alert-padding-y":".75rem","bs4-alert-margin-bottom":"$spacer-y","bs4-alert-border-radius":"$border-radius","bs4-alert-link-font-weight":"$font-weight-bold","bs4-alert-border-width":"$border-width","bs4-alert-success-bg":"$state-success-bg","bs4-alert-success-text":"$state-success-text","bs4-alert-success-border":"$state-success-border","bs4-alert-info-bg":"$state-info-bg","bs4-alert-info-text":"$state-info-text","bs4-alert-info-border":"$state-info-border","bs4-alert-warning-bg":"$state-warning-bg","bs4-alert-warning-text":"$state-warning-text","bs4-alert-warning-border":"$state-warning-border","bs4-alert-danger-bg":"$state-danger-bg","bs4-alert-danger-text":"$state-danger-text","bs4-alert-danger-border":"$state-danger-border","bs4-progress-height":"1rem","bs4-progress-font-size":".75rem","bs4-progress-bg":"$gray-lighter","bs4-progress-border-radius":"$border-radius","bs4-progress-box-shadow":"inset 0 .1rem .1rem rgba($black,.1)","bs4-progress-bar-color":"$white","bs4-progress-bar-bg":"$brand-primary","bs4-progress-bar-animation-timing":"1s linear infinite","bs4-list-group-color":"$body-color","bs4-list-group-bg":"$white","bs4-list-group-border-color":"rgba($black,.125)","bs4-list-group-border-width":"$border-width","bs4-list-group-border-radius":"$border-radius","bs4-list-group-item-padding-x":"1.25rem","bs4-list-group-item-padding-y":".75rem","bs4-list-group-hover-bg":"$gray-lightest","bs4-list-group-active-color":"$component-active-color","bs4-list-group-active-bg":"$component-active-bg","bs4-list-group-active-border":"$list-group-active-bg","bs4-list-group-active-text-color":"lighten($list-group-active-bg, 50%)","bs4-list-group-disabled-color":"$gray-light","bs4-list-group-disabled-bg":"$list-group-bg","bs4-list-group-disabled-text-color":"$list-group-disabled-color","bs4-list-group-link-color":"$gray","bs4-list-group-link-heading-color":"$gray-dark","bs4-list-group-link-hover-color":"$list-group-link-color","bs4-list-group-link-active-color":"$list-group-color","bs4-list-group-link-active-bg":"$gray-lighter","bs4-thumbnail-padding":".25rem","bs4-thumbnail-bg":"$body-bg","bs4-thumbnail-border-width":"$border-width","bs4-thumbnail-border-color":"#ddd","bs4-thumbnail-border-radius":"$border-radius","bs4-thumbnail-box-shadow":"0 1px 2px rgba($black,.075)","bs4-thumbnail-transition":"all .2s ease-in-out","bs4-figure-caption-font-size":"90%","bs4-figure-caption-color":"$gray-light","bs4-breadcrumb-padding-y":".75rem","bs4-breadcrumb-padding-x":"1rem","bs4-breadcrumb-item-padding":".5rem","bs4-breadcrumb-bg":"$gray-lighter","bs4-breadcrumb-divider-color":"$gray-light","bs4-breadcrumb-active-color":"$gray-light","bs4-breadcrumb-divider":"\\"\\/\\"","bs4-media-margin-top":"15px","bs4-media-heading-margin-bottom":"5px","bs4-media-alignment-padding-x":"10px","bs4-carousel-control-color":"$white","bs4-carousel-control-width":"15%","bs4-carousel-control-opacity":".5","bs4-carousel-indicator-width":"30px","bs4-carousel-indicator-height":"3px","bs4-carousel-indicator-spacer":"3px","bs4-carousel-indicator-active-bg":"$white","bs4-carousel-caption-width":"70%","bs4-carousel-caption-color":"$white","bs4-carousel-control-icon-width":"20px","bs4-carousel-transition":"transform .6s ease-in-out","bs4-close-font-size":"$font-size-base * 1.5","bs4-close-font-weight":"$font-weight-bold","bs4-close-color":"$black","bs4-close-text-shadow":"0 1px 0 $white","bs4-code-font-size":"90%","bs4-code-padding-x":".4rem","bs4-code-padding-y":".2rem","bs4-code-color":"#bd4147","bs4-code-bg":"$gray-lightest","bs4-kbd-color":"$white","bs4-kbd-bg":"$gray-dark","bs4-pre-bg":"$gray-lightest","bs4-pre-color":"$gray-dark","bs4-pre-border-color":"#ccc","bs4-pre-scrollable-max-height":"340px","contact_succeess_text":"Sent message successfully","contact_regard":"New request from {{name}}: {{regard}}","mail_template":"viola::contact-notification"}', '2017-10-31 07:24:23', '2017-12-11 13:31:37'),
(2, 'laratify-octobercms-octaskin', '{"website_name":"\\u4e95Cashtag","website_author":"Laratify","website_url":"http:\\/\\/demo.laratify.dev\\/octobercms\\/?theme=octaskin","description":"Get Funding to Grow Your Business","keywords":"octaskin,laratify,october,octobercms,themes,templates,free octobercms themes","load_google_fonts":"1","google_font_family":"Roboto+Slab:300,400,700|Raleway:300,300i,400,400i,700,700i","load_fontawesome":"1","load_material_icons":"1","load_stroke7_icons":"1","load_jQuery":"1","jQuery_version":"2.2.4","load_octobercms_framework":"0","primary_color":"#fff05a","secondary_color":"#2196f3","navigation_background_color":"#fff05a","navigation_text_color":"#ffffff","slideshow_background_color":"#455a64","slideshow_text_color":"#ffffff","header_background_color":"#37474f","header_text_color":"#ffffff","feature_background_color":"#ffffff","feature_text_color":"#686868","utility_background_color":"#eceff1","utility_text_color":"#686868","mainpage_background_color":"#ffffff","mainpage_text_color":"#686868","bottom_background_color":"#eceff1","bottom_text_color":"#686868","extension_background_color":"#ffffff","extension_text_color":"#686868","footer_background_color":"#455a64","footer_text_color":"#b0bec5","copyright_background_color":"#37474f","copyright_text_color":"#78909c","load_animate_css":"1","load_wow_js":"1","load_owl_carousel":"1","custom_css":"","custom_js":""}', '2017-12-11 13:40:23', '2017-12-11 14:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `old_content` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `master_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flosch_slideshow_slides`
--

CREATE TABLE `flosch_slideshow_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slideshow_id` int(10) UNSIGNED DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `published_at` datetime DEFAULT NULL,
  `unpublished_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flosch_slideshow_slides`
--

INSERT INTO `flosch_slideshow_slides` (`id`, `name`, `description`, `link`, `sort_order`, `created_at`, `updated_at`, `slideshow_id`, `is_published`, `published_at`, `unpublished_at`) VALUES
(1, '0', 'Slide N°0', 'http://example.com/', 1, '2017-10-31 07:16:57', '2017-10-31 07:16:57', 1, 0, NULL, NULL),
(2, '1', 'Slide N°1', 'http://example.com/', 2, '2017-10-31 07:16:57', '2017-10-31 07:16:57', 1, 0, NULL, NULL),
(3, '2', 'Slide N°2', 'http://example.com/', 3, '2017-10-31 07:16:57', '2017-10-31 07:16:57', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flosch_slideshow_slideshows`
--

CREATE TABLE `flosch_slideshow_slideshows` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flosch_slideshow_slideshows`
--

INSERT INTO `flosch_slideshow_slideshows` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Example', '2017-10-31 07:16:57', '2017-10-31 07:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_10_01_000001_Db_Deferred_Bindings', 1),
('2013_10_01_000002_Db_System_Files', 1),
('2013_10_01_000003_Db_System_Plugin_Versions', 1),
('2013_10_01_000004_Db_System_Plugin_History', 1),
('2013_10_01_000005_Db_System_Settings', 1),
('2013_10_01_000006_Db_System_Parameters', 1),
('2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
('2013_10_01_000008_Db_System_Mail_Templates', 1),
('2013_10_01_000009_Db_System_Mail_Layouts', 1),
('2014_10_01_000010_Db_Jobs', 1),
('2014_10_01_000011_Db_System_Event_Logs', 1),
('2014_10_01_000012_Db_System_Request_Logs', 1),
('2014_10_01_000013_Db_System_Sessions', 1),
('2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
('2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
('2015_10_01_000016_Db_Cache', 1),
('2015_10_01_000017_Db_System_Revisions', 1),
('2015_10_01_000018_Db_FailedJobs', 1),
('2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
('2016_10_01_000020_Db_System_Timestamp_Fix', 1),
('2013_10_01_000001_Db_Backend_Users', 2),
('2013_10_01_000002_Db_Backend_User_Groups', 2),
('2013_10_01_000003_Db_Backend_Users_Groups', 2),
('2013_10_01_000004_Db_Backend_User_Throttle', 2),
('2014_01_04_000005_Db_Backend_User_Preferences', 2),
('2014_10_01_000006_Db_Backend_Access_Log', 2),
('2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
('2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
('2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
('2014_10_01_000001_Db_Cms_Theme_Data', 3),
('2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
('2017_10_01_000003_Db_Cms_Theme_Logs', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2017-12-11 13:37:22', '2017-12-11 13:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_html` longtext COLLATE utf8_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2017-12-11 13:37:22', 1, '2017-12-11 13:37:22', '2017-12-11 13:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_channels`
--

CREATE TABLE `rainlab_forum_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_moderated` tinyint(1) NOT NULL DEFAULT '0',
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_forum_channels`
--

INSERT INTO `rainlab_forum_channels` (`id`, `parent_id`, `title`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `count_topics`, `count_posts`, `created_at`, `updated_at`, `is_hidden`, `is_moderated`, `embed_code`) VALUES
(1, NULL, 'Channel Orange', 'channel-orange', 'A root level forum channel', 1, 12, 0, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL),
(2, 1, 'Autumn Leaves', 'autumn-leaves', 'Disccusion about the season of falling leaves.', 2, 9, 1, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL),
(3, 2, 'September', 'september', 'The start of the fall season.', 3, 4, 2, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL),
(4, 2, 'October', 'october', 'The middle of the fall season.', 5, 6, 2, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL),
(5, 2, 'November', 'november', 'The end of the fall season.', 7, 8, 2, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL),
(6, 1, 'Summer Breeze', 'summer-breeze', 'Disccusion about the wind at the ocean.', 10, 11, 1, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL),
(7, NULL, 'Channel Green', 'channel-green', 'A root level forum channel', 13, 18, 0, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL),
(8, 7, 'Winter Snow', 'winter-snow', 'Disccusion about the frosty snow flakes.', 14, 15, 1, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL),
(9, 7, 'Spring Trees', 'spring-trees', 'Disccusion about the blooming gardens.', 16, 17, 1, 0, 0, '2017-12-11 13:37:21', '2017-12-11 13:37:21', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_members`
--

CREATE TABLE `rainlab_forum_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `last_active_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_posts`
--

CREATE TABLE `rainlab_forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `delete_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topics`
--

CREATE TABLE `rainlab_forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `start_member_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  `last_post_member_id` int(11) DEFAULT NULL,
  `last_post_at` datetime DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topic_followers`
--

CREATE TABLE `rainlab_forum_topic_followers` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci,
  `last_activity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'default', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n    </body>\n</html>', '{{ content|raw }}', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2017-10-31 07:16:57', '2017-10-31 07:16:57'),
(2, 'System', 'system', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n        <hr />\n        <p>This is an automatic message. Please do not reply to it.</p>\n    </body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2017-10-31 07:16:57', '2017-10-31 07:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '"386846ebe3802c4f192625743abb3f06"'),
(3, 'system', 'core', 'build', '"419"'),
(4, 'system', 'update', 'retry', '1513084887'),
(5, 'system', 'theme', 'history', '{"Laratify.octobercms-octaskin":"laratify-octobercms-octaskin"}'),
(6, 'cms', 'theme', 'active', '"laratify-octobercms-octaskin"');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2017-10-31 07:16:57'),
(2, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2017-10-31 07:16:57'),
(3, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2017-10-31 07:16:57'),
(4, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2017-10-31 07:16:57'),
(5, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2017-10-31 07:16:57'),
(6, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2017-10-31 07:16:57'),
(7, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2017-10-31 07:16:57'),
(8, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2017-10-31 07:16:57'),
(9, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2017-10-31 07:16:57'),
(10, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2017-10-31 07:16:57'),
(11, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2017-10-31 07:16:57'),
(12, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2017-10-31 07:16:57'),
(13, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2017-10-31 07:16:57'),
(14, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2017-10-31 07:16:57'),
(15, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2017-10-31 07:16:57'),
(16, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2017-10-31 07:16:57'),
(17, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2017-10-31 07:16:57'),
(18, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2017-10-31 07:16:57'),
(19, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2017-10-31 07:16:57'),
(20, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2017-10-31 07:16:57'),
(21, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2017-10-31 07:16:57'),
(22, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2017-10-31 07:16:57'),
(23, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2017-10-31 07:16:57'),
(24, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2017-10-31 07:16:57'),
(25, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2017-10-31 07:16:57'),
(26, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2017-10-31 07:16:57'),
(27, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2017-10-31 07:16:57'),
(28, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2017-10-31 07:16:57'),
(29, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2017-10-31 07:16:57'),
(30, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2017-10-31 07:16:57'),
(31, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2017-10-31 07:16:57'),
(32, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2017-10-31 07:16:57'),
(33, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2017-10-31 07:16:57'),
(34, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2017-10-31 07:16:57'),
(35, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2017-10-31 07:16:57'),
(36, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2017-10-31 07:16:57'),
(37, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2017-10-31 07:16:57'),
(38, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2017-10-31 07:16:57'),
(39, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2017-10-31 07:16:57'),
(40, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2017-10-31 07:16:57'),
(41, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2017-10-31 07:16:57'),
(42, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2017-10-31 07:16:57'),
(43, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2017-10-31 07:16:57'),
(44, 'Flosch.Slideshow', 'script', '1.0.1', 'create_slideshows_table.php', '2017-10-31 07:16:57'),
(45, 'Flosch.Slideshow', 'script', '1.0.1', 'create_slides_table.php', '2017-10-31 07:16:57'),
(46, 'Flosch.Slideshow', 'script', '1.0.1', 'seeder.php', '2017-10-31 07:16:57'),
(47, 'Flosch.Slideshow', 'comment', '1.0.1', 'First version of Slideshow', '2017-10-31 07:16:57'),
(48, 'Flosch.Slideshow', 'script', '1.0.2', 'table_update_flosch_slideshow_slides.php', '2017-10-31 07:16:57'),
(49, 'Flosch.Slideshow', 'comment', '1.0.2', 'Added is_published state and publication dates', '2017-10-31 07:16:57'),
(50, 'Flosch.Slideshow', 'comment', '1.0.3', 'Update documentation for Twitter Bootstrap sources', '2017-10-31 07:16:57'),
(51, 'Flosch.Slideshow', 'comment', '1.0.4', 'Update slides published query-scope (correct dates comparison)', '2017-10-31 07:16:57'),
(52, 'Flosch.Slideshow', 'comment', '1.0.5', 'Fix permission settings', '2017-10-31 07:16:57'),
(53, 'Flosch.Slideshow', 'script', '1.0.6', 'Add french translation', '2017-10-31 07:16:57'),
(54, 'Flosch.Slideshow', 'comment', '1.0.6', 'Add persian translation (thanks to @cracki)', '2017-10-31 07:16:57'),
(55, 'Flosch.Slideshow', 'comment', '1.0.7', 'Add german translation (thanks to @danielbruni)', '2017-10-31 07:16:57'),
(56, 'Flosch.Slideshow', 'comment', '1.0.8', 'Correct columns definition (thanks to @Jeime)', '2017-10-31 07:16:57'),
(57, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2017-12-11 13:37:20'),
(58, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2017-12-11 13:37:20'),
(59, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2017-12-11 13:37:20'),
(60, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2017-12-11 13:37:20'),
(61, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2017-12-11 13:37:20'),
(62, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2017-12-11 13:37:20'),
(63, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2017-12-11 13:37:20'),
(64, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2017-12-11 13:37:20'),
(65, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2017-12-11 13:37:20'),
(66, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2017-12-11 13:37:20'),
(67, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2017-12-11 13:37:20'),
(68, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2017-12-11 13:37:20'),
(69, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2017-12-11 13:37:20'),
(70, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2017-12-11 13:37:20'),
(71, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2017-12-11 13:37:20'),
(72, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2017-12-11 13:37:21'),
(73, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2017-12-11 13:37:21'),
(74, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2017-12-11 13:37:21'),
(75, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2017-12-11 13:37:21'),
(76, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2017-12-11 13:37:21'),
(77, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2017-12-11 13:37:21'),
(78, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2017-12-11 13:37:21'),
(79, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2017-12-11 13:37:21'),
(80, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2017-12-11 13:37:21'),
(81, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2017-12-11 13:37:21'),
(82, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2017-12-11 13:37:21'),
(83, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2017-12-11 13:37:21'),
(84, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2017-12-11 13:37:21'),
(85, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2017-12-11 13:37:21'),
(86, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2017-12-11 13:37:21'),
(87, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2017-12-11 13:37:21'),
(88, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2017-12-11 13:37:21'),
(89, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2017-12-11 13:37:21'),
(90, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2017-12-11 13:37:21'),
(91, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2017-12-11 13:37:21'),
(92, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2017-12-11 13:37:21'),
(93, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2017-12-11 13:37:21'),
(94, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-12-11 13:37:21'),
(95, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2017-12-11 13:37:21'),
(96, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2017-12-11 13:37:21'),
(97, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2017-12-11 13:37:21'),
(98, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2017-12-11 13:37:21'),
(99, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2017-12-11 13:37:21'),
(100, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2017-12-11 13:37:21'),
(101, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2017-12-11 13:37:21'),
(102, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2017-12-11 13:37:21'),
(103, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2017-12-11 13:37:21'),
(104, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2017-12-11 13:37:21'),
(105, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2017-12-11 13:37:21'),
(106, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2017-12-11 13:37:21'),
(107, 'RainLab.User', 'comment', '1.4.0', '!!! The Notifications tab in User settings has been removed.', '2017-12-11 13:37:21'),
(108, 'RainLab.User', 'comment', '1.4.1', 'Added support for user impersonation.', '2017-12-11 13:37:21'),
(109, 'RainLab.User', 'comment', '1.4.2', 'Fixes security bug in Password Reset component.', '2017-12-11 13:37:21'),
(110, 'RainLab.User', 'comment', '1.4.3', 'Fixes session handling for AJAX requests.', '2017-12-11 13:37:21'),
(111, 'RainLab.User', 'comment', '1.4.4', 'Fixes bug where impersonation touches the last seen timestamp.', '2017-12-11 13:37:21'),
(112, 'RainLab.User', 'comment', '1.4.5', 'Added token fallback process to Account / Reset Password components when parameter is missing.', '2017-12-11 13:37:21'),
(113, 'RainLab.Forum', 'script', '1.0.1', 'create_channels_table.php', '2017-12-11 13:37:21'),
(114, 'RainLab.Forum', 'script', '1.0.1', 'create_posts_table.php', '2017-12-11 13:37:21'),
(115, 'RainLab.Forum', 'script', '1.0.1', 'create_topics_table.php', '2017-12-11 13:37:21'),
(116, 'RainLab.Forum', 'script', '1.0.1', 'create_members_table.php', '2017-12-11 13:37:21'),
(117, 'RainLab.Forum', 'script', '1.0.1', 'seed_all_tables.php', '2017-12-11 13:37:21'),
(118, 'RainLab.Forum', 'comment', '1.0.1', 'First version of Forum', '2017-12-11 13:37:21'),
(119, 'RainLab.Forum', 'script', '1.0.2', 'create_topic_watches_table.php', '2017-12-11 13:37:21'),
(120, 'RainLab.Forum', 'comment', '1.0.2', 'Add unread flags to topics', '2017-12-11 13:37:21'),
(121, 'RainLab.Forum', 'script', '1.0.3', 'members_add_mod_and_ban.php', '2017-12-11 13:37:21'),
(122, 'RainLab.Forum', 'comment', '1.0.3', 'Users can now be made moderators or be banned', '2017-12-11 13:37:21'),
(123, 'RainLab.Forum', 'script', '1.0.4', 'channels_add_hidden_and_moderated.php', '2017-12-11 13:37:21'),
(124, 'RainLab.Forum', 'comment', '1.0.4', 'Channels can now be hidden or moderated', '2017-12-11 13:37:21'),
(125, 'RainLab.Forum', 'script', '1.0.5', 'add_embed_code.php', '2017-12-11 13:37:22'),
(126, 'RainLab.Forum', 'comment', '1.0.5', 'Introduced topic and channel embedding', '2017-12-11 13:37:22'),
(127, 'RainLab.Forum', 'script', '1.0.6', 'create_channel_watches_table.php', '2017-12-11 13:37:22'),
(128, 'RainLab.Forum', 'comment', '1.0.6', 'Add unread flags to channels', '2017-12-11 13:37:22'),
(129, 'RainLab.Forum', 'script', '1.0.7', 'create_topic_followers_table.php', '2017-12-11 13:37:22'),
(130, 'RainLab.Forum', 'comment', '1.0.7', 'Forum members can now follow topics', '2017-12-11 13:37:22'),
(131, 'RainLab.Forum', 'comment', '1.0.8', 'Added Channel name to the Topics component view', '2017-12-11 13:37:22'),
(132, 'RainLab.Forum', 'comment', '1.0.9', 'Updated the Settings page', '2017-12-11 13:37:22'),
(133, 'RainLab.Forum', 'comment', '1.0.10', 'Users can now report spammers who can be banned by moderators.', '2017-12-11 13:37:22'),
(134, 'RainLab.Forum', 'comment', '1.0.11', 'Users can now quote other posts.', '2017-12-11 13:37:22'),
(135, 'RainLab.Forum', 'comment', '1.0.12', 'Improve support for CDN asset hosting.', '2017-12-11 13:37:22'),
(136, 'RainLab.Forum', 'comment', '1.0.13', 'Fixes a bug where channels cannot be selected in the Embed component inspector.', '2017-12-11 13:37:22'),
(137, 'RainLab.Forum', 'comment', '1.0.14', 'Improve the pagination code used in the component default markup.', '2017-12-11 13:37:22'),
(138, 'RainLab.Forum', 'comment', '1.0.15', 'When a User is deleted, their Member profile and posts is also deleted.', '2017-12-11 13:37:22'),
(139, 'RainLab.Forum', 'comment', '1.0.16', 'Posting topics is now throttled allowing 3 new topics every 15 minutes.', '2017-12-11 13:37:22'),
(140, 'RainLab.Forum', 'comment', '1.0.17', 'Update channel reorder page to new system reordering feature.', '2017-12-11 13:37:22'),
(141, 'RainLab.Forum', 'comment', '1.0.18', 'Minor fix to embed topic component.', '2017-12-11 13:37:22'),
(142, 'RainLab.Forum', 'script', '1.0.19', 'update_timestamp_nullable.php', '2017-12-11 13:37:22'),
(143, 'RainLab.Forum', 'comment', '1.0.19', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-12-11 13:37:22'),
(144, 'RainLab.Forum', 'script', '1.1.0', 'drop_watches_tables.php', '2017-12-11 13:37:22'),
(145, 'RainLab.Forum', 'comment', '1.1.0', 'Major performance enhancements', '2017-12-11 13:37:22'),
(146, 'RainLab.Forum', 'comment', '1.1.1', 'Fixes bug throwing error when a forum topic has no posts.', '2017-12-11 13:37:22'),
(147, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2017-12-11 13:37:22'),
(148, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2017-12-11 13:37:22'),
(149, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2017-12-11 13:37:22'),
(150, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2017-12-11 13:37:22'),
(151, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2017-12-11 13:37:22'),
(152, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2017-12-11 13:37:22'),
(153, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2017-12-11 13:37:22'),
(154, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2017-12-11 13:37:22'),
(155, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2017-12-11 13:37:22'),
(156, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2017-12-11 13:37:22'),
(157, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2017-12-11 13:37:22'),
(158, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2017-12-11 13:37:22'),
(159, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2017-12-11 13:37:22'),
(160, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate "idParam" component property in favour of "slug" property.', '2017-12-11 13:37:22'),
(161, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2017-12-11 13:37:22'),
(162, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2017-12-11 13:37:22'),
(163, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2017-12-11 13:37:22'),
(164, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2017-12-11 13:37:22'),
(165, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2017-12-11 13:37:22'),
(166, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2017-12-11 13:37:22'),
(167, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2017-12-11 13:37:22'),
(168, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2017-12-11 13:37:22'),
(169, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2017-12-11 13:37:22'),
(170, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2017-12-11 13:37:22'),
(171, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2017-12-11 13:37:22'),
(172, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2017-12-11 13:37:22'),
(173, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2017-12-11 13:37:22'),
(174, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-12-11 13:37:22'),
(175, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2017-12-11 13:37:22'),
(176, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2017-12-11 13:37:22'),
(177, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2017-12-11 13:37:22'),
(178, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2017-12-11 13:37:22'),
(179, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2017-12-11 13:37:22'),
(180, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2017-12-11 13:37:22'),
(181, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2017-12-11 13:37:22'),
(182, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2017-12-11 13:37:22'),
(183, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2017-12-11 13:37:22'),
(184, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2017-12-11 13:37:22'),
(185, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2017-12-11 13:37:22'),
(186, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2017-12-11 13:37:22'),
(187, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2017-12-11 13:37:22'),
(188, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2017-12-11 13:37:22'),
(189, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2017-12-11 13:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'RainLab.Pages', '1.2.16', '2017-10-31 07:16:57', 0, 0),
(2, 'October.Demo', '1.0.1', '2017-10-31 07:16:57', 0, 0),
(3, 'Flosch.Slideshow', '1.0.8', '2017-10-31 07:16:57', 0, 0),
(4, 'RainLab.User', '1.4.5', '2017-12-11 13:37:21', 0, 0),
(5, 'RainLab.Forum', '1.1.1', '2017-12-11 13:37:22', 0, 0),
(6, 'RainLab.Blog', '1.2.19', '2017-12-11 13:37:22', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  `new_value` text COLLATE utf8_unicode_ci,
  `revisionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', 'Default group for guest users.', '2017-12-11 13:37:21', '2017-12-11 13:37:21'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2017-12-11 13:37:21', '2017-12-11 13:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flosch_slideshow_slides_slideshow_id_foreign` (`slideshow_id`);

--
-- Indexes for table `flosch_slideshow_slideshows`
--
ALTER TABLE `flosch_slideshow_slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_channels_slug_unique` (`slug`),
  ADD KEY `rainlab_forum_channels_parent_id_index` (`parent_id`),
  ADD KEY `rainlab_forum_channels_embed_code_index` (`embed_code`);

--
-- Indexes for table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_members_user_id_index` (`user_id`),
  ADD KEY `rainlab_forum_members_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_members_count_topics_index` (`count_topics`),
  ADD KEY `rainlab_forum_members_last_active_at_index` (`last_active_at`),
  ADD KEY `rainlab_forum_members_is_moderator_index` (`is_moderator`);

--
-- Indexes for table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_posts_topic_id_index` (`topic_id`),
  ADD KEY `rainlab_forum_posts_member_id_index` (`member_id`);

--
-- Indexes for table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_topics_slug_unique` (`slug`),
  ADD KEY `sticky_post_time` (`is_sticky`,`last_post_at`),
  ADD KEY `rainlab_forum_topics_channel_id_index` (`channel_id`),
  ADD KEY `rainlab_forum_topics_start_member_id_index` (`start_member_id`),
  ADD KEY `rainlab_forum_topics_last_post_at_index` (`last_post_at`),
  ADD KEY `rainlab_forum_topics_is_private_index` (`is_private`),
  ADD KEY `rainlab_forum_topics_is_locked_index` (`is_locked`),
  ADD KEY `rainlab_forum_topics_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_topics_count_views_index` (`count_views`),
  ADD KEY `rainlab_forum_topics_embed_code_index` (`embed_code`);

--
-- Indexes for table `rainlab_forum_topic_followers`
--
ALTER TABLE `rainlab_forum_topic_followers`
  ADD PRIMARY KEY (`topic_id`,`member_id`);

--
-- Indexes for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Indexes for table `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `flosch_slideshow_slideshows`
--
ALTER TABLE `flosch_slideshow_slideshows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  ADD CONSTRAINT `flosch_slideshow_slides_slideshow_id_foreign` FOREIGN KEY (`slideshow_id`) REFERENCES `flosch_slideshow_slideshows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
