# frozen_string_literal: true

$LOAD_PATH.unshift(__dir__)

require 'json'

require 'parker/game'
require 'parker/screenshot'

require 'parker/platform/base'
require 'parker/platform/playstation'
require 'parker/platform/steam'
require 'parker/platform/switch'