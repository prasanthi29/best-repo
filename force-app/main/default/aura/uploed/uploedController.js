({
    /**
     * Webkul Software.
     *
     * @category  Webkul
     * @author    Webkul
     * @copyright Copyright (c) 2010-2016 Webkul Software Private Limited (https://webkul.com)
     * @license   https://store.webkul.com/license.html
     */
    handleAfterUpload: function (component, event) {
        // Number of files Uploaded
        var uploadedFiles = event.getParam("files");
        alert("Number of files uploaded : " + uploadedFiles.length);
    }
})