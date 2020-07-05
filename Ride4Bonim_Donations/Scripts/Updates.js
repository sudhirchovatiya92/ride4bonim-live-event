function getStatus() {
    $.getJSON('latest-donations.aspx', function (data) {
        console.log("Collecting status");
        var amt = formatMoney(data.totals.raised);
        var targ = formatMoney(data.totals.target);
        var _percent = data.totals.raised / data.totals.target * 100;
        var percent = formatMoney(_percent);
        $('#amountRaised').text("£" + amt);
        $('#targetValue').text("£" + targ);
        $('#targPercent').text(percent + "%");
        $('#targProg').attr("percent", "50");
        $('#targProg').updateprogress(_percent);

        var donationsCount = Object.keys(data.latestDonations[0]).length;
        var i = donationsCount - 10;
        if (i < 0) i = 0;
        for (var j = 0; j < 10; i++ , j++) {
            if (i >= donationsCount)
                i = donationsCount - 10;
            if (i < 0) i = 0;
            var donationInfo = data.latestDonations[i];
            $(".detail_1").eq(j).text("£" + donationInfo.amount);
            var date = donationInfo.date.split(' ');
            $(".detail_2").eq(j).text("DONATION AT " + date[0]);
            $(".detail_3").eq(j).text(date[1]);
            $(".detail_4").eq(j).text(donationInfo.donor + " sponsored " + donationInfo.member);
        }
    });
}

function formatMoney(amount, decimalCount = 0, decimal = ".", thousands = ",") {
    try {
        decimalCount = Math.abs(decimalCount);
        decimalCount = isNaN(decimalCount) ? 2 : decimalCount;

        const negativeSign = amount < 0 ? "-" : "";

        let i = parseInt(amount = Math.abs(Number(amount) || 0).toFixed(decimalCount)).toString();
        let j = (i.length > 3) ? i.length % 3 : 0;

        return negativeSign + (j ? i.substr(0, j) + thousands : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands) + (decimalCount ? decimal + Math.abs(amount - i).toFixed(decimalCount).slice(2) : "");
    } catch (e) {
        console.log(e)
    }
};


$(document).ready(function () {
    getStatus();
    window.setInterval(function () {
        getStatus();
    }, 10000);
});