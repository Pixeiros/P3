project(
    'Práctica 3 de PAV - detección de pitch', 'cpp',
    default_options: ['prefix=/home/albino/PAV', 'libdir=lib'],
    version : 'v2.0'
)

inc = include_directories(['src/include', 'src/docopt_cpp'])

# Librería PAV
lib = 'pav'
src = ['src/pav/digital_filter.cpp', 'src/pav/filename.cpp',
       'src/pav/wavfile_mono.cpp',   'src/pav/keyvalue.cpp',
       'src/docopt_cpp/docopt.cpp'] 

lib_pav = static_library(
    lib,
    sources: src,
    include_directories: inc,
    install: true,
)

# Programa get_pitch
exe = 'get_pitch'
src = ['src/get_pitch/get_pitch.cpp',  'src/get_pitch/pitch_analyzer.cpp']

get_pitch = executable(
    exe,
    sources: src,
    include_directories: inc,
    link_args: ['-lm', '-lsndfile'],
    link_with: lib_pav,
    install: true,
)

# Programa get_pitch
exe = 'pitch_evaluate'
src = 'src/get_pitch/pitch_evaluate.cpp'

pitch_evaluate = executable(
    exe,
    sources: src,
    include_directories: inc,
    link_with: lib_pav,
    install: true,
)

# Scripts del proyecto
install_data(
    'scripts/run_get_pitch.sh', 
	rename: 'run_get_pitch',
    install_dir: get_option('bindir'),
    install_mode: 'rwxr-xr-x',
)

# Documentación usando Doxygen
items = ['README.md', 'src/get_pitch', 'src/pav', 'src/include']
inputs = ''
foreach item : items
    inputs += '"' + join_paths(meson.source_root(), item) + '" '
endforeach

doxygen = find_program('doxygen')
practica = meson.source_root().split('/')[-1]
readme = files('README.md')
html = join_paths(meson.source_root(), 'html')

config_DG = configuration_data()
config_DG.set('project_name', meson.project_name())
config_DG.set('project_version', meson.project_version())
config_DG.set('inputs', inputs)
config_DG.set('install_dir', html)
config_DG.set('dir_html', practica)
config_DG.set('style_sheet', join_paths(meson.source_root(), 'src/doxyfile', 'style.css'))

doxyfile = configure_file(
    input: 'src/doxyfile/Doxyfile.in',
    output: 'Doxyfile',
    configuration: config_DG,
)

doc = custom_target('Documentación del proyecto',
    output: '.doxygen.done',
    command: [doxygen, doxyfile],
    install: true,
    install_dir: html,
    capture: true,
    depend_files: readme,
    depends: [get_pitch, pitch_evaluate, lib_pav]
)
