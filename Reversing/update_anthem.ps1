# UTF-8 인코딩으로 파일 읽기
$content = Get-Content "정답_converted copy.xml" -Raw -Encoding UTF8

# 새로운 HTML 내용 (애국가 포함)
$newHtml = @"
&lt;html>
&lt;center>&lt;font size='+2' color='blue'>Skills.com&lt;/font>&lt;/center>
&lt;br>&lt;br>
&lt;hr>오래전부터 당신과 같은 합격자들을 기다려 왔다우.
&lt;br>&lt;br>
&lt;h3>애국가&lt;/h3>
&lt;br>
&lt;b>1절&lt;/b>&lt;br>
동해물과 백두산이 마르고 닳도록&lt;br>
하느님이 보우하사 우리나라 만세&lt;br>
(후렴) 무궁화 삼천리 화려강산&lt;br>
대한사람 대한으로 길이 보전하세&lt;br>
&lt;br>
&lt;b>2절&lt;/b>&lt;br>
남산 위에 저 소나무 철갑을 두른 듯&lt;br>
바람 서리 불변함은 우리 기상일세&lt;br>
(후렴) 무궁화 삼천리 화려강산&lt;br>
대한사람 대한으로 길이 보전하세&lt;br>
&lt;br>
&lt;b>3절&lt;/b>&lt;br>
가을 하늘 공활한데 높고 구름 없이&lt;br>
밝은 달은 우리 가슴 일편단심일세&lt;br>
(후렴) 무궁화 삼천리 화려강산&lt;br>
대한사람 대한으로 길이 보전하세&lt;br>
&lt;br>
&lt;b>4절&lt;/b>&lt;br>
이 기상과 이 맘으로 충성을 다하여&lt;br>
괴로우나 즐거우나 나라 사랑하세&lt;br>
(후렴) 무궁화 삼천리 화려강산&lt;br>
대한사람 대한으로 길이 보전하세
&lt;/html>
"@

# 기존 HTML 패턴
$oldHtml = @"
&lt;html>
&lt;center>&lt;font size='+2' color='blue'>Skills.com&lt;/font>&lt;/center>
&lt;br>&lt;br>
&lt;hr>Welcome to Skills.com homepage!!
&lt;/html>
"@

# 교체
$newContent = $content -replace [regex]::Escape($oldHtml), $newHtml

# UTF-8 인코딩으로 파일 저장
$newContent | Set-Content "정답_converted copy.xml" -Encoding UTF8

Write-Host "완료! 모든 index.html이 업데이트되었습니다."
