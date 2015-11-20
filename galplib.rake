require '~/.scripts/rakeutils/dependency.rb'
load '~/.galplib_dir'

GALTOOLIB = { V54: %w(skymap),
              V55: %w(galstruct nuclei processes skymap random utils)
}

deps = { "#{GALPDIRS[:galp]}" => %w(galprop),
         "#{GALPDIRS[:galtool]}" => GALTOOLIB[GALPVERSION.to_sym],
         "#{GALPDIRS[:source]}" => [],
         "#{GALPDIRS[:packages]}" => PACKAGES,
}
deps.merge!(EXTRA)

order = %w(galpwrap galprop CCfits CLHEP cfitsio)

DEPEND = Depend.new(deps, order, GALP_DEF_FLAG)
