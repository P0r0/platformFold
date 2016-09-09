.class final Lcom/baidu/sapi2/c;
.super Ljava/lang/Object;
.source "SapiOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "fast_reg_sms_num"

.field private static final b:Ljava/lang/String; = "global_share_strategy"

.field private static final c:Ljava/lang/String; = "specific_share_strategy"

.field private static final d:Ljava/lang/String; = "authorized_packages"

.field private static final e:Ljava/lang/String; = "authorized_domains"

.field private static final f:Ljava/lang/String; = "cache"

.field private static final g:Ljava/lang/String; = "enabled"

.field private static final h:Ljava/lang/String; = "modules"

.field private static final i:Ljava/lang/String; = "id"

.field private static final j:Ljava/lang/String; = "download_url"

.field private static final k:Ljava/lang/String; = "hash"


# instance fields
.field private l:Lcom/baidu/sapi2/c$a;

.field private m:Ljava/lang/String;

.field private n:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/c;->o:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/c;->p:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/c;->q:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/baidu/sapi2/c$a;

    invoke-direct {v0}, Lcom/baidu/sapi2/c$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/c;->l:Lcom/baidu/sapi2/c$a;

    .line 48
    const-string v0, "10698000036592"

    iput-object v0, p0, Lcom/baidu/sapi2/c;->m:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/c;
    .registers 13
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 113
    new-instance v4, Lcom/baidu/sapi2/c;

    invoke-direct {v4}, Lcom/baidu/sapi2/c;-><init>()V

    .line 114
    .local v4, "options":Lcom/baidu/sapi2/c;
    const-string v10, "cache"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/sapi2/c$a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/c$a;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/c;->l:Lcom/baidu/sapi2/c$a;

    .line 115
    const-string v10, "fast_reg_sms_num"

    const-string v11, "10698000036592"

    invoke-virtual {p0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/c;->m:Ljava/lang/String;

    .line 116
    const-string v10, "global_share_strategy"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "strategyStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 118
    invoke-static {v8}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->mapStrToValue(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/c;->n:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 120
    :cond_2d
    const-string v10, "specific_share_strategy"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 121
    .local v3, "obj":Lorg/json/JSONObject;
    if-eqz v3, :cond_53

    .line 122
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 125
    .local v9, "tpl":Ljava/lang/String;
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->mapStrToValue(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v7

    .line 126
    .local v7, "strategy":Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    iget-object v10, v4, Lcom/baidu/sapi2/c;->o:Ljava/util/Map;

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 129
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v7    # "strategy":Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .end local v9    # "tpl":Ljava/lang/String;
    :cond_53
    const-string v10, "authorized_packages"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_81

    .line 131
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    .restart local v2    # "iterator":Ljava/util/Iterator;
    :cond_5f
    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_81

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "packageSign":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5f

    .line 136
    iget-object v10, v4, Lcom/baidu/sapi2/c;->p:Ljava/util/Map;

    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 140
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageSign":Ljava/lang/String;
    :cond_81
    const-string v10, "authorized_domains"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 141
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_a6

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_a6

    .line 143
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a3

    .line 144
    iget-object v10, v4, Lcom/baidu/sapi2/c;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 148
    .end local v1    # "i":I
    :cond_a6
    return-object v4
.end method

.method static h()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v0, "initialAuthorizedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "com.baidu.sapi2.(.*)"

    const-string v2, "de308d7973b5171883333a97253327e4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "com.baidu.tieba(.*)"

    const-string v2, "673004cf2f6efdec2385c8116c1e8c14"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "com.baidu.searchbox(.*)"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "com.baidu.appsearch"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "com.baidu.(.*)input(.*)"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "com.baidu.BaiduMap(.*)"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "com.baidu.browser.(.+)"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v1, "com.baidu.iknow"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "com.baidu.yuedu"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "com.baidu.homework"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "com.baidu.wenku"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "com.baidu.mbaby"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v1, "com.baidu.navi"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "com.baidu.travel"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "com.baidu.baidulife"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "com.ting.mp3.android"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "com.baidu.news(.*)"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v1, "com.baidu.video"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v1, "com.baidu.hao123(.*)"

    const-string v2, "7fd3727852d29eb6f4283988dc0d6150"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "com.baidu.netdisk(.*)"

    const-string v2, "ae5821440fab5e1a61a025f014bd8972"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "com.baidu.music.lebo"

    const-string v2, "b1d67a31136599143c5c38879728dcfd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "com.hiapk.marketpho"

    const-string v2, "d46053ef4381d35cb774eb632d8e8aec"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "com.baidu.gamecenter(.*)"

    const-string v2, "bddf74f2473eb1802fe13fe3e1aab81a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "com.baidu.notes"

    const-string v2, "989d3c446cadade24c8c57a10fe6370d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v1, "com.baidu.lifenote"

    const-string v2, "c1a65e392e3892db0935d22f6c20b9cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "com.baidu.passport.securitycenter"

    const-string v2, "db97d206640d7aca6d75975b3c1f6e87"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "com.nuomi"

    const-string v2, "59215ee95c063ff2c56226581a62130a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "com.baidu.shucheng91"

    const-string v2, "2090b2ef3011c12d851ed125c2360954"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "com.duoku.gamesearch"

    const-string v2, "153a76549eb514258b5806f95da02bb3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "com.baidu.qingpai"

    const-string v2, "80344917d9e7cf0fd8a8914cc918e0ef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "cn.jingling.motu.photowonder"

    const-string v2, "6930f0bd9fa461c2cd65e216acee0118"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "com.baidu.account"

    const-string v2, "fe3c74f0431ea0dc303a10b6af6470fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v1, "com.duoku.game.helper"

    const-string v2, "6231a79a3f43cdd01797eb5febbc6350"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "com.dragon.android.pandaspace"

    const-string v2, "5b120e96b20f5b4ec695d79b20d18753"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "com.baidu.addressugc"

    const-string v2, "9e2a7cde67d36c1e6a01bb070fc8ef7b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "cn.opda.a.phonoalbumshoushou"

    const-string v2, "310a4f78e839b86df7731c2f48fcadae"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v1, "com.baidu.fb"

    const-string v2, "a4622402640f20dfda894cbe2edf8823"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v1, "com.baidu.baidutranslate"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "com.baidu.lbs.waimai"

    const-string v2, "77ad7ac419a031af0252422152c62e67"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "com.baidu.lottery"

    const-string v2, "6e45686dd05db2374b0a600c7f28c0c4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "com.baidu.doctor"

    const-string v2, "49c95b74699e358ffe67f5daacab3d48"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v1, "com.baidu.patient"

    const-string v2, "49c95b74699e358ffe67f5daacab3d48"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "com.baidu.baidumovie"

    const-string v2, "645c143e25f34e076bcee9600b30e4c2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "com.baidu.bdg.skyeye"

    const-string v2, "544f0f4a82864fbf7b9663fbc80437bb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "com.zongheng.reader(.*)"

    const-string v2, "b9c43ba43f1e150d4f1670ae09a89a7f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v1, "com.baidu.doctor.doctorask"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v1, "com.baidu.k12edu"

    const-string v2, "610d60c69d2adf4b57fc6c2ec83fecbf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "com.baidu.zuowen"

    const-string v2, "fa6b26072965ee3f372da85ca69b7b99"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "com.baidu.wallet"

    const-string v2, "de74282b18c0847e64b2b3f0ebbfe0a0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v1, "com.baidu.clouda.mobile.crm"

    const-string v2, "561e009b4a1f97012bf90dfed6c054d5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v1, "com.baidu.wear.app"

    const-string v2, "73a9573a74d219b8cf3066316d0b330c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "com.dianxinos.optimizer.channel"

    const-string v2, "bd3df198d50f0dafa3c5804d342d3698"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "com.baidu.lbs.bus"

    const-string v2, "3d96c8b0be8fd5b1db754b8dbb73f23e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "com.baidu.hui"

    const-string v2, "3102ce07daa9cb7c8d62c82fdc61c0ba"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "com.baidu.image"

    const-string v2, "ff934173c55f54a81d9c5da216263479"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "com.baidu.vip"

    const-string v2, "a00a833bf8afe07172262db3ccb3a5c5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "com.baidu.mami"

    const-string v2, "86743dc804add1dd5f3a81a5818ead58"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "com.baidu.faceu"

    const-string v2, "a140a3b0775361c459fc751c50e98d77"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "com.baidu.movie"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-object v0
.end method

.method static j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v0, "authorizedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "baidu.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v1, "hao123.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v1, "nuomi.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/sapi2/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/sapi2/c;->n:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/sapi2/c;->o:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/sapi2/c;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 65
    iget-object v0, p0, Lcom/baidu/sapi2/c;->p:Ljava/util/Map;

    .line 67
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/c;->h()Ljava/util/Map;

    move-result-object v0

    goto :goto_a
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/sapi2/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 73
    iget-object v0, p0, Lcom/baidu/sapi2/c;->q:Ljava/util/List;

    .line 75
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/c;->j()Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method

.method public f()Lcom/baidu/sapi2/c$a;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/sapi2/c;->l:Lcom/baidu/sapi2/c$a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 11

    .prologue
    .line 84
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v6, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string v8, "cache"

    iget-object v9, p0, Lcom/baidu/sapi2/c;->l:Lcom/baidu/sapi2/c$a;

    invoke-virtual {v9}, Lcom/baidu/sapi2/c$a;->c()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v8, "fast_reg_sms_num"

    iget-object v9, p0, Lcom/baidu/sapi2/c;->m:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v8, p0, Lcom/baidu/sapi2/c;->n:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-eqz v8, :cond_26

    .line 89
    const-string v8, "global_share_strategy"

    iget-object v9, p0, Lcom/baidu/sapi2/c;->n:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v9}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_26
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v7, "obj":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/baidu/sapi2/c;->o:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 93
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v9}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_35

    .line 107
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_55
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_57
    return-object v8

    .line 95
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "obj":Lorg/json/JSONObject;
    :cond_58
    const-string v8, "specific_share_strategy"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    new-instance v7, Lorg/json/JSONObject;

    .end local v7    # "obj":Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .restart local v7    # "obj":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/baidu/sapi2/c;->p:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 98
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6c

    .line 100
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_86
    const-string v8, "authorized_packages"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 102
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/baidu/sapi2/c;->q:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_96
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_96

    .line 105
    .end local v1    # "domain":Ljava/lang/String;
    :cond_a6
    const-string v8, "authorized_domains"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_ae} :catch_55

    move-result-object v8

    goto :goto_57
.end method

.method i()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v0, "orderAuthorizedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "com.baidu.wallet"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v1, "com.nuomi"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v1, "com.baidu.lbs.waimai"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v1, "com.baidu.searchbox(.*)"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v1, "com.baidu.BaiduMap(.*)"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v1, "com.baidu.tieba(.*)"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v1, "com.baidu.netdisk(.*)"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "com.baidu.appsearch"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-object v0
.end method
