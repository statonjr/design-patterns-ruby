# frozen_string_literal: true

require_relative 'encrypter'
require_relative 'stringio_adapter'

# Adapters allow us to bridge the gap between mismatching software interfaces
reader = File.open('message.txt')
writer = File.open('message.encrypted', 'w')
encrypter = Encrypter.new('my secret key')
encrypter.encrypt(reader, writer)

encrypter = Encrypter.new('XYZZY')
reader = StringIOAdapter.new('We attack at dawn!')
writer = File.open('out.txt', 'w')
encrypter.encrypt(reader, writer)
