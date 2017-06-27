<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>AAAAAAAAA</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/skeleton.css">
    <link rel="stylesheet" href="css/m.css">
    <link rel="icon" type="image/png" href="images/favicon.png">
</head>
<body>
    <div class="container">
        <jsp:include page="Menu.jsp" flush="true"/>
        <div class="docs-section">
            <h6 class="docs-header">meme</h6>
            <p>mimo</p>
        </div>
        <form>
            <div class="row">
                <div class="six columns">
                    <label for="exampleEmailInput">Your email</label>
                    <input class="u-full-width" type="email" placeholder="test@mailbox.com" id="exampleEmailInput">
                </div>
                <div class="six columns">
                    <label for="exampleRecipientInput">Reason for contacting</label>
                    <select class="u-full-width" id="exampleRecipientInput">
                        <option value="Option 1">Questions</option>
                        <option value="Option 2">Admiration</option>
                        <option value="Option 3">Can I get your number?</option>
                    </select>
                </div>
            </div>
            <label for="exampleMessage">Message</label>
            <textarea class="u-full-width" placeholder="Hi Dave ?" id="exampleMessage"></textarea>
            <label class="example-send-yourself-copy">
                <input type="checkbox">
                <span class="label-body">Send a copy to yourself</span>
            </label>
            <input class="button-primary" type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
