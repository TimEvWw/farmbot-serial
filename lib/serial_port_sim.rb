## SERIAL PORT SIMULATION
## **********************

# Used for unit tests

module Fb
  class SerialPortSim
    attr_accessor :rts, :read_timeout, :test_serial_read, :test_serial_write

    def initialize(comm_port, parameters)
      @test_serial_read  = ""
      @test_serial_write = ""
    end

    def write(text)
      @test_serial_write = text
    end

    def read(characters)
      i = nil
      @test_serial_read = nil if @test_serial_read == ""

      if @test_serial_read != nil
        i = @test_serial_read[0]
        @test_serial_read = @test_serial_read[1..-1]
      end
      i
    end

  end
end
