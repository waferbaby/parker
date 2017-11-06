# frozen_string_literal: true

$LOAD_PATH.unshift(__dir__)

require 'fileutils'
require 'json'

require 'parker/game'
require 'parker/screenshot'

require 'parker/platform/base'
require 'parker/platform/ps4'
require 'parker/platform/steam'
require 'parker/platform/switch'
