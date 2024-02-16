return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        filetype = {
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt",
          },
          python = "python3 -u $fileName",
          typescript = "deno run",
          rust = {
            "cd $dir &&",
            "rustc $fileName &&",
            "$dir/$fileNameWithoutExt",
          },
          c = "cd '$dir' && gcc $fileName -o $fileNameWithoutExt && '$dir/$fileNameWithoutExt'",
          tex = "pdflatex $fileName",
        },
      })
    end,
  },
}
