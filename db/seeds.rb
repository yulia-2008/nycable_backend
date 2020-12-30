

Company.destroy_all
Review.destroy_all
User.destroy_all
Rating.destroy_all


c = Company.create(name: "Spectrum", logo: "https://www.walleyeweekend.com/wp-content/uploads/2018/03/Spectrum_Logo-2018.png", 
                    internet_plan: 49.99, internet_tv_plan: 89.98, speed: 200, 
                    coverage_map: "https://res.cloudinary.com/dytr9lvlc/image/upload/v1607987865/charter_mvkabq.jpg",
                    number_of_channels: 125, special_offer: "", phone: "1-855-261-7122", 
                    plans_link: "https://www.spectrum.com/internet" )
c1 = Company.create(name: "Optimum", logo: "https://3.bp.blogspot.com/-sOYCRPIhy-M/UE0QhrQo9UI/AAAAAAAAM4A/811GBwR_ZLg/s1600/Optimum+logo+2012.png", 
                    internet_plan: 35.00, internet_tv_plan: 89.99, speed: 300, 
                    coverage_map: "https://res.cloudinary.com/dytr9lvlc/image/upload/v1607990231/optimum_i5siut.jpg", 
                    number_of_channels: 50, special_offer: "Special offer! 30 mbps Internet for 14.99/mo ($0.00 for the first 60 days) ", phone: "1-866-200-7273", 
                    plans_link: "https://www.optimum.com/internet")

c3 = Company.create(name: "AT&T", logo: "https://solaristechservices.com/wp-content/uploads/2017/03/att-logo.png",
                    tv_plan: 59.99, number_of_channels: 65, plans_link: "https://www.att.com/tv/?source=ECTV25GGL0BATVorP&tfn=atttv&WT.srch=1&wtExtndSource=at%26t+tv+plans&gclsrc=aw.ds&ds_rl=1290501&ds_rl=1290501&gclid=CjwKCAiA_eb-BRB2EiwAGBnXXl3REsIfJYANHSNZIOpuxZHSJ3a5WbfsHVPOmIhA1w8rp_7sDwiNXRoCwHsQAvD_BwE&gclsrc=aw.ds",
                    phone: "1-866-549-0741", coverage_map: "https://res.cloudinary.com/dytr9lvlc/image/upload/v1608159600/at_t_hkkziy.jpg"
)

c4 = Company.create(name: "Verizon", logo: "https://cdn.macrumors.com/article-new/2015/09/verizonlogo.jpg", 
                    internet_plan: 39.99, tv_plan: 70.00, speed: 200, 
                    coverage_map: "https://res.cloudinary.com/dytr9lvlc/image/upload/v1608159600/at_t_hkkziy.jpg", 
                    number_of_channels: 300, special_offer: "Special offer! 60 days TV Test Drive. Explore 425+ channels for $50.00/month, then choose the best plan. ", 
                    phone: "1-800-922-0204", 
                    plans_link: "https://verizon-internet.com/ny.html?kwid=90CAFA85-17CB-4296-AFDB-2CDD63F6DBCD&afsrc=1")
 

c5 = Company.create(name: "Dish", logo: "http://www.audiogurus.com/learn/wp-content/uploads/2014/12/DISH-logo.jpg",
                    tv_plan: 59.99, number_of_channels: 190, plans_link: "https://www.dish.com/lp/value-gc/?bs=1&MCID=GSEM&utm_medium=Paidsearch&HCID=brandsearch&utm_source=MICROSOFT&utm_campaign=71700000050393751&utm_term=dish&utm_content=58700006417075527&match=e&KBID=8884221307&RP=SEM278729&device=c&utm_click=[%25FT_GUID%25]&&msclkid=db56fe3242ab16167640a1edad856a02&gclid=db56fe3242ab16167640a1edad856a02&gclsrc=3p.ds",
                    phone: "1-855-607-5411", coverage_map: "https://res.cloudinary.com/dytr9lvlc/image/upload/v1608159600/at_t_hkkziy.jpg"
)

c6 = Company.create(name: "Viasat", logo: "https://www.1zj.com/uploadfile/2017/1206/20171206055517910.jpg", 
                    internet_plan: 65.00,  speed: 200, 
                    coverage_map: "https://res.cloudinary.com/dytr9lvlc/image/upload/v1608159600/at_t_hkkziy.jpg", 
                    special_offer: " Viasat offers satellite internet access. All plans come with pricing that’s locked in for 2-years.", 
                    phone: "1-844-962-0605", 
                    plans_link: "https://www.viasat.com/cf/responsive/?ckmid=101451&a=241&ocid=1014270&agid=1152288860328542&subid=1159158139.1159158139.1080662523&s1=1159158139.1159158139.1080662523&cpid=79854&cookiereset=1&gclid=&device=c&c=106449&s3=e.o.&s4=c&s6=59981&ls=g&s20=79854&url=https%3A%2F%2Fwww.viasat.com%2Fcf%2F&msclkid=ec36ecd214ee15a14c51b3321b695119"
)

c7 = Company.create(name: "RCN", logo: "https://www.mcall.com/resizer/7YW9ySwOMjGInutmXTFodOgO5r0=/800x400/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/G2WEVP5F2NDNXB22TOHUMC4EPA.jpg", 
                    internet_plan: 34.99,  speed: 250, number_of_channels: 64,
                    coverage_map: "https://res.cloudinary.com/dytr9lvlc/image/upload/v1608591085/rcn_qhswpn.jpg", 
                    special_offer: "3 Months Free", 
                    phone: "1-800-746-4726", internet_tv_plan: 49.91,
                    plans_link: "https://www.rcn.com/new-york/high-speed-internet/#shop"
                    
)
                    
puts "company"

u = User.create(role: "technician", username: "tom", password_digest: 111, first_name: "Tom", last_name: "Smith", company_name: "Optimum", city: "Brooklyn")

puts "user"

 #rt = Review.create(user_id: u1.id, object_id: u.id, object_type: "User", text: "GREAT" )
 #rc = Review.create(user_id: u1.id, object_id: c.id,  object_type: "Company", text: "Good" )
 puts "rev"

 #rat = Rating.create(user_id: u1.id, subject_id: u.id, subject_type: "User", num: 3)

