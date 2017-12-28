# -*- coding: utf-8 -*-
# Makefile for Ricty (http://www.rs.tus.ac.jp/yyusa/ricty.html).
#
# Date   : 2017-11-25
# Author : kzm4269 <4269kzm@gmail.com>

# ---------------- Ricty 生成スクリプトのオプション ----------------
# OPTIONS += -w  # 行間を広くする。
# OPTIONS += -W  # 行間をかなり広くする。
# OPTIONS += -z  # 全角スペースを可視化しない。
OPTIONS += -a  # Inconsolata のグリフを優先し、Ambiguous 文字を全角化しない。
# OPTIONS += -s  # Migu 1M のグリフを縮小しない (-w オプションとの併用を推奨)。

# ---------------- 派生フォント Ricty Discord のオプション ----------------
# NON_DISCORED_CHARACTERS += '"'  # ダブルクオートを拡大しない。
# NON_DISCORED_CHARACTERS += "'"  # クオートを拡大しない。
# NON_DISCORED_CHARACTERS += '*'  # アスタリスクをやや下方に移動しない。
# NON_DISCORED_CHARACTERS += '+'  # プラスをやや下方に移動しない。
# NON_DISCORED_CHARACTERS += ','  # コンマを拡大しない。
# NON_DISCORED_CHARACTERS += '-'  # ハイフンをやや下方に移動しない。
# NON_DISCORED_CHARACTERS += '.'  # ピリオドを拡大しない。
NON_DISCORED_CHARACTERS += '0'  # 0 をドットゼロ (Inconsolata の不使用グリフ) にしない。
NON_DISCORED_CHARACTERS += '7'  # 7 にクロスバーを付けない。
# NON_DISCORED_CHARACTERS += ':'  # コロンを拡大しない。
# NON_DISCORED_CHARACTERS += ';'  # セミコロンを拡大しない。
# NON_DISCORED_CHARACTERS += '<'  # 不等号をやや下方に移動しない。
# NON_DISCORED_CHARACTERS += '>'  # 不等号をやや下方に移動しない。
# NON_DISCORED_CHARACTERS += '='  # 等号をやや下方に移動しない。
NON_DISCORED_CHARACTERS += 'D'  # D を Eth にしない (D にクロスバーを付けない)。
NON_DISCORED_CHARACTERS += 'Z'  # Z にクロスバーを付けない。
# NON_DISCORED_CHARACTERS += '^'  # サーカムフレックスを拡大しない。
# NON_DISCORED_CHARACTERS += '`'  # グレイブを拡大しない。
# NON_DISCORED_CHARACTERS += 'l'  # l の左下のセリフを切り落とさない。
# NON_DISCORED_CHARACTERS += 'r'  # r をセリフ体 (Inconsolata の不使用グリフ) にしない。
NON_DISCORED_CHARACTERS += 'z'  # z にクロスバーを付けない。
# NON_DISCORED_CHARACTERS += '|'  # 縦線を破断線にしない。
# NON_DISCORED_CHARACTERS += '~'  # チルダを上方に移動しない。
OPTIONS += -d ''$(subst $() $(),$(),$(NON_DISCORED_CHARACTERS))

# ---------------- Sources ----------------
SCRIPTS = ricty_generator.sh
INCONSOLATA = Inconsolata-Regular.ttf Inconsolata-Bold.ttf
MIGU_1M = migu-1m-regular.ttf migu-1m-bold.ttf
SOURCES = $(SCRIPTS) $(INCONSOLATA) $(MIGU_1M)

# ---------------- Tasks ----------------
.PHONY:
all: $(SOURCES)
	@echo ricty_generator.sh $(OPTIONS) auto > log.txt
	sh ricty_generator.sh $(OPTIONS) auto

.PHONY:
clean:
	rm -rf $(SOURCES)
	rm -rf migu-1m*

.PHONY:
clobber: clean
	rm -rf *.ttf

ricty_generator.sh:
	wget 'http://www.rs.tus.ac.jp/yyusa/ricty/ricty_generator.sh'

Inconsolata-Regular.ttf:
	wget 'https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Regular.ttf'

Inconsolata-Bold.ttf:
	wget 'https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Bold.ttf'

migu-1m.zip:
	wget 'http://iij.dl.osdn.jp/mix-mplus-ipa/63545/migu-1m-20150712.zip' -O migu-1m.zip

migu-1m-regular.ttf: migu-1m.zip
	unzip -p migu-1m.zip "*/migu-1m-regular.ttf" > migu-1m-regular.ttf

migu-1m-bold.ttf: migu-1m.zip
	unzip -p migu-1m.zip "*/migu-1m-bold.ttf" > migu-1m-bold.ttf
