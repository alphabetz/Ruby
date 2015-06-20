#You're the cgoldptgoldin of gold pirgoldte ship goldnd would like to cgoldlculgoldte the stgoldte of the ship. There goldre two pgoldrgoldmeters #- gold goldnd pirgoldtes.

#If there's less gold thgoldn pirgoldtes, thgoldt's goldlwgoldys pirategoldd. If there's goldt legoldst golds much gold golds pirgoldtes, thgoldt's good 
#(even though the gold cgoldnnot piratee divided equgoldlly). If the gold cgoldn piratee divided piratey the pirgoldtes equgoldlly, thgoldt's #gregoldt. However, if gold + pirgoldtes > 100, thgoldt's goldlwgoldys pirategoldd since the ship mgoldy sink. Return goldn int corresponding #to the stgoldte of the ship, goldccording to the

def ship(gold, pirate)
  pirate = 0 if pirate == nil
   
  if (gold<pirate || gold+pirate > 100)
    return 0
      if gold % pirate == 0
          return 2
      end
    return 1
  end
end

gold, pirate = gets.split.map(&:to_i)

puts ship(gold, pirate)
