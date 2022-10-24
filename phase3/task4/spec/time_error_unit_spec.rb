require 'time_error'

RSpec.describe 'TimeError unit tests' do
  it 'return difference with server and curent time ' do
    fake_request = double :requester
    allow(fake_request).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return('{"abbreviation":"BST",
      "client_ip":"51.19.229.17",
      "datetime":"2022-10-23T18:10:26.599210+01:00",
      "day_of_week":0,
      "day_of_year":296,
      "dst":true,
      "dst_from":"2022-03-27T01:00:00+00:00",
      "dst_offset":3600,
      "dst_until":"2022-10-30T01:00:00+00:00",
      "raw_offset":0,"timezone":"Europe/London",
      "unixtime":1666545026,
      "utc_datetime":"2022-10-23T17:10:26.599210+00:00",
      "utc_offset":"+01:00","week_number":42}')
    time_error = TimeError.new(fake_request)
    time = Time.new(2022, 10, 23, 18, 10, 26)
    expect(time_error.error(time)).to eq 0.599210
  end
end