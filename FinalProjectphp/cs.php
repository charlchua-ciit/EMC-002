<?php include 'header.php'?>
<section class="py-5 wrapper">
    <div class="container px-4 px-lg-5 mt-5 text-green">
        <div class="col mb-5">
            <div class="card h-100">
                <div class="card-body p-4">
                    <div>
                        <form name="form">
                            <label for="issue">Nature of issue:</label><br>
                            <input type="text" name="issue" id="issue"><br>
                            <label for="details">Details:</label><br>
                            <textarea name="details" id="details" form="form" cols="30" rows="10"></textarea><br><br>
                            <input type="submit" value="Submit" class="btn btn-outline-dark mt-auto">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </section>
<?php include 'footer.php'?>