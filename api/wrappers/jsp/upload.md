---
title: upload
slug: jsp-upload
tags: api, java
publish: true
---

# \<kendo:upload\>
A JSP tag representing Kendo Upload.


## Configuration Attributes


### enabled `boolean`

Enables (

#### Example
    <kendo:upload enabled="enabled">
    </kendo:upload>



### multiple `boolean`

Enables (

#### Example
    <kendo:upload multiple="multiple">
    </kendo:upload>



### showFileList `boolean`

Enables (

#### Example
    <kendo:upload showFileList="showFileList">
    </kendo:upload>



### cancel `String`

Fires when the upload has been cancelled while in progress.

#### Example
    <kendo:upload cancel="handle_cancel">
    </kendo:upload>
    <script>
        function handle_cancel(e) {
            // Code to handle the cancel event.
        }
    </script>



### complete `String`

Fires when all active uploads have completed either successfully or with errors.

#### Example
    <kendo:upload complete="handle_complete">
    </kendo:upload>
    <script>
        function handle_complete(e) {
            // Code to handle the complete event.
        }
    </script>



### error `String`

Fires when an upload / remove operation has failed.

#### Example
    <kendo:upload error="handle_error">
    </kendo:upload>
    <script>
        function handle_error(e) {
            // Code to handle the error event.
        }
    </script>



### progress `String`

Fires when upload progress data is available.

#### Example
    <kendo:upload progress="handle_progress">
    </kendo:upload>
    <script>
        function handle_progress(e) {
            // Code to handle the progress event.
        }
    </script>



### remove `String`

Fires when an uploaded file is about to be removed.
Cancelling the event will prevent the remove.

#### Example
    <kendo:upload remove="handle_remove">
    </kendo:upload>
    <script>
        function handle_remove(e) {
            // Code to handle the remove event.
        }
    </script>



### select `String`

Triggered when a file(s) is selected. Note: Cancelling this event will prevent the selection from
occurring.

#### Example
    <kendo:upload select="handle_select">
    </kendo:upload>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>



### success `String`

Fires when an upload / remove operation has been completed successfully.

#### Example
    <kendo:upload success="handle_success">
    </kendo:upload>
    <script>
        function handle_success(e) {
            // Code to handle the success event.
        }
    </script>



### upload `String`

Fires when one or more files are about to be uploaded.
Cancelling the event will prevent the upload.

#### Example
    <kendo:upload upload="handle_upload">
    </kendo:upload>
    <script>
        function handle_upload(e) {
            // Code to handle the upload event.
        }
    </script>



### Event Attributes


### cancel `String`

Fires when the upload has been cancelled while in progress.

#### Example
    <kendo:upload cancel="handle_cancel">
    </kendo:upload>
    <script>
        function handle_cancel(e) {
            // Code to handle the cancel event.
        }
    </script>



### complete `String`

Fires when all active uploads have completed either successfully or with errors.

#### Example
    <kendo:upload complete="handle_complete">
    </kendo:upload>
    <script>
        function handle_complete(e) {
            // Code to handle the complete event.
        }
    </script>



### error `String`

Fires when an upload / remove operation has failed.

#### Example
    <kendo:upload error="handle_error">
    </kendo:upload>
    <script>
        function handle_error(e) {
            // Code to handle the error event.
        }
    </script>



### progress `String`

Fires when upload progress data is available.

#### Example
    <kendo:upload progress="handle_progress">
    </kendo:upload>
    <script>
        function handle_progress(e) {
            // Code to handle the progress event.
        }
    </script>



### remove `String`

Fires when an uploaded file is about to be removed.
Cancelling the event will prevent the remove.

#### Example
    <kendo:upload remove="handle_remove">
    </kendo:upload>
    <script>
        function handle_remove(e) {
            // Code to handle the remove event.
        }
    </script>



### select `String`

Triggered when a file(s) is selected. Note: Cancelling this event will prevent the selection from
occurring.

#### Example
    <kendo:upload select="handle_select">
    </kendo:upload>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>



### success `String`

Fires when an upload / remove operation has been completed successfully.

#### Example
    <kendo:upload success="handle_success">
    </kendo:upload>
    <script>
        function handle_success(e) {
            // Code to handle the success event.
        }
    </script>



### upload `String`

Fires when one or more files are about to be uploaded.
Cancelling the event will prevent the upload.

#### Example
    <kendo:upload upload="handle_upload">
    </kendo:upload>
    <script>
        function handle_upload(e) {
            // Code to handle the upload event.
        }
    </script>


## Event Tags
  

### kendo:upload-cancel

Fires when the upload has been cancelled while in progress.

#### Example
    <kendo:upload>
        <kendo:upload-cancel>
            <script>
                function(e) {
                    // Code to handle the cancel event.
                }
            </script>
        </kendo:upload-cancel>
    </kendo:upload>

 

### kendo:upload-complete

Fires when all active uploads have completed either successfully or with errors.

#### Example
    <kendo:upload>
        <kendo:upload-complete>
            <script>
                function(e) {
                    // Code to handle the complete event.
                }
            </script>
        </kendo:upload-complete>
    </kendo:upload>

 

### kendo:upload-error

Fires when an upload / remove operation has failed.

#### Example
    <kendo:upload>
        <kendo:upload-error>
            <script>
                function(e) {
                    // Code to handle the error event.
                }
            </script>
        </kendo:upload-error>
    </kendo:upload>

 

### kendo:upload-progress

Fires when upload progress data is available.

#### Example
    <kendo:upload>
        <kendo:upload-progress>
            <script>
                function(e) {
                    // Code to handle the progress event.
                }
            </script>
        </kendo:upload-progress>
    </kendo:upload>

 

### kendo:upload-remove

Fires when an uploaded file is about to be removed.
Cancelling the event will prevent the remove.

#### Example
    <kendo:upload>
        <kendo:upload-remove>
            <script>
                function(e) {
                    // Code to handle the remove event.
                }
            </script>
        </kendo:upload-remove>
    </kendo:upload>

 

### kendo:upload-select

Triggered when a file(s) is selected. Note: Cancelling this event will prevent the selection from
occurring.

#### Example
    <kendo:upload>
        <kendo:upload-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:upload-select>
    </kendo:upload>

 

### kendo:upload-success

Fires when an upload / remove operation has been completed successfully.

#### Example
    <kendo:upload>
        <kendo:upload-success>
            <script>
                function(e) {
                    // Code to handle the success event.
                }
            </script>
        </kendo:upload-success>
    </kendo:upload>

 

### kendo:upload-upload

Fires when one or more files are about to be uploaded.
Cancelling the event will prevent the upload.

#### Example
    <kendo:upload>
        <kendo:upload-upload>
            <script>
                function(e) {
                    // Code to handle the upload event.
                }
            </script>
        </kendo:upload-upload>
    </kendo:upload>

 

## Child JSP Tags

### kendo:upload-async

Configures the ability to upload a file(s) in an asynchronous manner. Please refer to the

More documentation is available at [kendo:upload-async](/api/wrappers/jsp/upload/async).

#### Example

    <kendo:upload>
        <kendo:upload-async></kendo:upload-async>
    </kendo:upload>
 
### kendo:upload-localization

Sets the strings rendered by the Upload.

More documentation is available at [kendo:upload-localization](/api/wrappers/jsp/upload/localization).

#### Example

    <kendo:upload>
        <kendo:upload-localization></kendo:upload-localization>
    </kendo:upload>
         
