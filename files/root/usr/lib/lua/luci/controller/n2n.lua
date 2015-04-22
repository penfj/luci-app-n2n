module("luci.controller.n2n", package.seeall)

function index()
        entry({"admin", "network", "n2n"}, cbi("n2n"), _("N2N"), 100)
        end
