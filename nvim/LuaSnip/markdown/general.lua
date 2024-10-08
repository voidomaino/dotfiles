local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")
local postfix = require("luasnip.extras.postfix").postfix
-- conditions
local line_begin = require("luasnip.extras.expand_conditions").line_begin
local in_mathzone = require("luasnip-helper").in_mathzone
local get_visual = require("luasnip-helper").get_visual


return {

    s({
        trig = "```",
        name = "codeblock",
        dscr = "Insert a chunk of code",
        hidden = "true",
        snippetType = "autosnippet"
    }, fmta(
        [[
        ```<>
        <>
        ```
        ]],
        {i(1, "code format"), i(2, "code contents")},
        {delimeters = "<>"}
    ), {
        condition = line_begin
    }),

    s({
        trig = "_",
        dscr = "Set selected text to Italic format.",
        name = "Italic form",
        hidden = "false",
        snippetType = "snippet"
    }, fmta(
        "_<>_",
        { d(1, get_visual), }
    )),

    s({
        trig = "__",
        name = "Bold form",
        dscr = "Set selected text to Bold format.",
        hidden = "false",
        snippetType = "snippet"
    }, fmta(
        "__<>__",
        { d(1, get_visual), }
    )),

    s({
        trig = "___",
        name = "Bold Italic form",
        dscr = "Set selected text to Bold Italic format.",
        hidden = "true",
        snippetType = "autosnippet"
    }, fmta(
        "___<>___",
        { d(1, get_visual), }
    )),

    s({
        trig = "`",
        name = "Inline Code",
        dscr = "Set selected text to Code format.",
        hidden = "false",
        snippetType = "snippet"
    }, fmta(
        "`<>`",
        { d(1, get_visual), }
    )),


    s({
        trig = "$$",
        snippetType = "autosnippet"
    }, fmta(
        [[$$
        <>
        $$]],
        { i(1) }
    ), {
        condition = line_begin
    }),

}
