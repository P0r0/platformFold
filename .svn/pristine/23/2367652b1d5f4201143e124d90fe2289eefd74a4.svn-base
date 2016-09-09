.class public final Lcom/duoku/platform/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;

    invoke-direct {v0}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;-><init>()V

    .line 77
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    invoke-virtual {v0, v2}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setErrorCode(I)V

    .line 81
    if-eqz v2, :cond_16

    .line 99
    :goto_15
    return-object v0

    .line 85
    :cond_16
    const-string v2, "updatetype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 86
    const-string v3, "apkurl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    const-string v4, "apkversion"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    const-string v5, "apksize"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v2}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setType(I)V

    .line 92
    invoke-virtual {v0, v3}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setApk_url(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v4}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setApk_version(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v5}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setApk_size(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public b(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/duoku/platform/f/d$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/f/d$1;-><init>(Lcom/duoku/platform/f/d;)V

    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 112
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/a;->setErrorCode(I)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/a;->setErrorString(Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/duoku/platform/h/h;

    invoke-direct {v0}, Lcom/duoku/platform/h/h;-><init>()V

    .line 135
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 137
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->setErrorCode(I)V

    .line 140
    invoke-virtual {v0, v3}, Lcom/duoku/platform/h/h;->setErrorString(Ljava/lang/String;)V

    .line 142
    if-eqz v2, :cond_1f

    .line 182
    :cond_1e
    :goto_1e
    return-object v0

    .line 147
    :cond_1f
    const-string v2, "currentkubinum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->g(Ljava/lang/String;)V

    .line 157
    const-string v2, "isprizeable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->h(Ljava/lang/String;)V

    .line 158
    const-string v2, "integralnum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->i(Ljava/lang/String;)V

    .line 159
    const-string v2, "downloadurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->j(Ljava/lang/String;)V

    .line 160
    const-string v2, "prizeid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->m(Ljava/lang/String;)V

    .line 161
    const-string v2, "viplevel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->n(Ljava/lang/String;)V

    .line 163
    const-string v2, "isshownotification"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->d(Ljava/lang/String;)V

    .line 164
    const-string v2, "notificationmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->e(Ljava/lang/String;)V

    .line 165
    const-string v2, "notificationurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->f(Ljava/lang/String;)V

    .line 166
    const-string v2, "integral"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->c(Ljava/lang/String;)V

    .line 167
    const-string v2, "gameid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->b(Ljava/lang/String;)V

    .line 168
    const-string v2, "assistantversion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->a(Ljava/lang/String;)V

    .line 173
    const-string v2, "userrank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/h;->k(Ljava/lang/String;)V

    .line 174
    const-string v2, "isprizeable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 176
    const-string v2, "isprizeabled"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/h;->l(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public d(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v6, Lcom/duoku/platform/h/f;

    invoke-direct {v6}, Lcom/duoku/platform/h/f;-><init>()V

    .line 226
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    const-string v1, "errorcode"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 234
    const-string v2, "errormsg"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v6, v1}, Lcom/duoku/platform/h/f;->setErrorCode(I)V

    .line 237
    invoke-virtual {v6, v2}, Lcom/duoku/platform/h/f;->setErrorString(Ljava/lang/String;)V

    .line 239
    if-eqz v1, :cond_30

    .line 320
    :goto_2f
    return-object v6

    .line 244
    :cond_30
    const-string v1, "accept_time"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v6, v1}, Lcom/duoku/platform/h/f;->setAccepTime(Ljava/lang/String;)V

    .line 247
    const-string v1, "gamephone"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v6, v1}, Lcom/duoku/platform/h/f;->a(Ljava/lang/String;)V

    .line 250
    const-string v1, "question"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 251
    const/4 v2, 0x0

    move v4, v2

    :goto_4c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v4, v2, :cond_7c

    .line 280
    const-string v1, "submit_question"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 281
    const/4 v2, 0x0

    move v3, v2

    :goto_5c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v3, v2, :cond_d5

    .line 295
    const-string v1, "my_question"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 296
    const/4 v2, 0x0

    move v3, v2

    :goto_6c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v3, v2, :cond_fa

    .line 314
    invoke-virtual {v6, v7}, Lcom/duoku/platform/h/f;->a(Ljava/util/List;)V

    .line 315
    invoke-virtual {v6, v8}, Lcom/duoku/platform/h/f;->b(Ljava/util/List;)V

    .line 316
    invoke-virtual {v6, v9}, Lcom/duoku/platform/h/f;->c(Ljava/util/List;)V

    goto :goto_2f

    .line 253
    :cond_7c
    new-instance v11, Lcom/duoku/platform/ui/entity/e;

    invoke-direct {v11}, Lcom/duoku/platform/ui/entity/e;-><init>()V

    .line 254
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 257
    const-string v3, "typename"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 259
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 260
    const/4 v3, 0x0

    move v5, v3

    :goto_9c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v5, v3, :cond_af

    .line 274
    invoke-virtual {v11, v13}, Lcom/duoku/platform/ui/entity/e;->a(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v11, v12}, Lcom/duoku/platform/ui/entity/e;->a(Ljava/util/List;)V

    .line 277
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4c

    .line 262
    :cond_af
    new-instance v14, Lcom/duoku/platform/ui/entity/m;

    invoke-direct {v14}, Lcom/duoku/platform/ui/entity/m;-><init>()V

    .line 264
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 265
    const-string v15, "key"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 266
    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual {v14, v15}, Lcom/duoku/platform/ui/entity/m;->a(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v14, v3}, Lcom/duoku/platform/ui/entity/m;->b(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_9c

    .line 283
    :cond_d5
    new-instance v4, Lcom/duoku/platform/ui/entity/n;

    invoke-direct {v4}, Lcom/duoku/platform/ui/entity/n;-><init>()V

    .line 285
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 286
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 287
    const-string v11, "typename"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v4, v5}, Lcom/duoku/platform/ui/entity/n;->a(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4, v2}, Lcom/duoku/platform/ui/entity/n;->b(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_5c

    .line 298
    :cond_fa
    new-instance v4, Lcom/duoku/platform/ui/entity/l;

    invoke-direct {v4}, Lcom/duoku/platform/ui/entity/l;-><init>()V

    .line 300
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 301
    const-string v5, "content"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 302
    const-string v10, "submit_time"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 303
    const-string v11, "state"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 304
    const-string v12, "reply"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v4, v5}, Lcom/duoku/platform/ui/entity/l;->a(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v4, v10}, Lcom/duoku/platform/ui/entity/l;->b(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v4, v11}, Lcom/duoku/platform/ui/entity/l;->c(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v4, v2}, Lcom/duoku/platform/ui/entity/l;->d(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_6c
.end method

.method public e(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Lcom/duoku/platform/h/g;

    invoke-direct {v0}, Lcom/duoku/platform/h/g;-><init>()V

    .line 337
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 339
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/g;->setErrorCode(I)V

    .line 342
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/g;->setErrorString(Ljava/lang/String;)V

    .line 344
    if-eqz v2, :cond_1e

    .line 351
    :cond_1e
    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Lcom/duoku/platform/h/i;

    invoke-direct {v0}, Lcom/duoku/platform/h/i;-><init>()V

    .line 366
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 368
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/i;->setErrorCode(I)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/i;->setErrorString(Ljava/lang/String;)V

    .line 373
    if-eqz v2, :cond_1e

    .line 380
    :cond_1e
    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/duoku/platform/h/j;

    invoke-direct {v0}, Lcom/duoku/platform/h/j;-><init>()V

    .line 398
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 399
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 400
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/j;->setErrorCode(I)V

    .line 403
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/j;->setErrorString(Ljava/lang/String;)V

    .line 405
    if-eqz v2, :cond_1e

    .line 412
    :cond_1e
    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/duoku/platform/ui/entity/k;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 424
    new-instance v3, Lcom/duoku/platform/ui/entity/k;

    invoke-direct {v3}, Lcom/duoku/platform/ui/entity/k;-><init>()V

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 429
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 430
    const-string v4, "errorcode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 431
    const-string v5, "errormsg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/entity/k;->setErrorCode(I)V

    .line 434
    invoke-virtual {v3, v5}, Lcom/duoku/platform/ui/entity/k;->setErrorString(Ljava/lang/String;)V

    .line 436
    if-eqz v4, :cond_25

    .line 496
    :goto_24
    return-object v3

    .line 441
    :cond_25
    const-string v4, "pageid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/entity/k;->b(Ljava/lang/String;)V

    .line 443
    const-string v4, "assistanturl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/entity/k;->c(Ljava/lang/String;)V

    .line 446
    const-string v4, "assistantversion"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/entity/k;->a(Ljava/lang/String;)V

    .line 449
    const-string v4, "havehine"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 452
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/entity/k;->a(Z)V

    .line 458
    :cond_52
    :goto_52
    const-string v4, "messages"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 459
    if-nez v4, :cond_6b

    .line 461
    const/4 v0, 0x0

    .line 492
    :goto_5b
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/entity/k;->a(Ljava/util/ArrayList;)V

    goto :goto_24

    .line 454
    :cond_5f
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 456
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/entity/k;->a(Z)V

    goto :goto_52

    :cond_6b
    move v1, v0

    .line 465
    :goto_6c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_74

    move-object v0, v2

    goto :goto_5b

    .line 467
    :cond_74
    new-instance v5, Lcom/duoku/platform/ui/entity/j;

    invoke-direct {v5}, Lcom/duoku/platform/ui/entity/j;-><init>()V

    .line 468
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 469
    const-string v6, "messageid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 470
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->c(Ljava/lang/String;)V

    .line 471
    const-string v6, "content"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 472
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->d(Ljava/lang/String;)V

    .line 473
    const-string v6, "read"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->e(Ljava/lang/String;)V

    .line 475
    const-string v6, "messagetitle"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->f(Ljava/lang/String;)V

    .line 477
    const-string v6, "time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->h(Ljava/lang/String;)V

    .line 479
    const-string v6, "overview"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 480
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->i(Ljava/lang/String;)V

    .line 481
    const-string v6, "messagetype"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 482
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->a(I)V

    .line 483
    const-string v6, "messageinfo"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 484
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->b(Ljava/lang/String;)V

    .line 485
    const-string v6, "messagesource"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 486
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/j;->g(Ljava/lang/String;)V

    .line 487
    const-string v6, "imageurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {v5, v0}, Lcom/duoku/platform/ui/entity/j;->a(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6c
.end method

.method public i(Ljava/lang/String;)Lcom/duoku/platform/ui/entity/i;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v3, Lcom/duoku/platform/ui/entity/i;

    invoke-direct {v3}, Lcom/duoku/platform/ui/entity/i;-><init>()V

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 514
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 515
    const-string v4, "errormsg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 517
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/i;->setErrorCode(I)V

    .line 518
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/entity/i;->setErrorString(Ljava/lang/String;)V

    .line 520
    if-eqz v1, :cond_24

    .line 567
    :goto_23
    return-object v3

    .line 525
    :cond_24
    const-string v1, "buttonhint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/i;->c(Ljava/lang/String;)V

    .line 527
    const-string v1, "tiphint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/i;->d(Ljava/lang/String;)V

    .line 529
    const-string v1, "assistanturl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/i;->e(Ljava/lang/String;)V

    .line 531
    const-string v1, "gameid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/i;->b(Ljava/lang/String;)V

    .line 534
    const-string v1, "assistantversion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/i;->a(Ljava/lang/String;)V

    .line 537
    const-string v1, "giftexist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 538
    if-nez v4, :cond_5e

    .line 540
    const/4 v0, 0x0

    .line 563
    :goto_5a
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/entity/i;->a(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 544
    :cond_5e
    const/4 v0, 0x0

    move v1, v0

    :goto_60
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_68

    move-object v0, v2

    goto :goto_5a

    .line 546
    :cond_68
    new-instance v5, Lcom/duoku/platform/ui/entity/h;

    invoke-direct {v5}, Lcom/duoku/platform/ui/entity/h;-><init>()V

    .line 547
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 548
    const-string v6, "giftid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 549
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/h;->b(Ljava/lang/String;)V

    .line 550
    const-string v6, "giftname"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 551
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/h;->c(Ljava/lang/String;)V

    .line 552
    const-string v6, "giftcontent"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/h;->d(Ljava/lang/String;)V

    .line 554
    const-string v6, "giftleft"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 555
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/h;->e(Ljava/lang/String;)V

    .line 556
    const-string v6, "abortdate"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 557
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/h;->f(Ljava/lang/String;)V

    .line 558
    const-string v6, "giftnew"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {v5, v0}, Lcom/duoku/platform/ui/entity/h;->a(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60
.end method

.method public j(Ljava/lang/String;)Lcom/duoku/platform/ui/entity/b;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 579
    new-instance v3, Lcom/duoku/platform/ui/entity/b;

    invoke-direct {v3}, Lcom/duoku/platform/ui/entity/b;-><init>()V

    .line 581
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 584
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 585
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 586
    const-string v4, "errormsg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/b;->setErrorCode(I)V

    .line 589
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/entity/b;->setErrorString(Ljava/lang/String;)V

    .line 591
    if-eqz v1, :cond_24

    .line 636
    :goto_23
    return-object v3

    .line 596
    :cond_24
    const-string v1, "buttonhint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/b;->d(Ljava/lang/String;)V

    .line 598
    const-string v1, "tiphint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/b;->e(Ljava/lang/String;)V

    .line 600
    const-string v1, "assistanturl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/b;->a(Ljava/lang/String;)V

    .line 602
    const-string v1, "gameid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/b;->c(Ljava/lang/String;)V

    .line 605
    const-string v1, "assistantversion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/b;->b(Ljava/lang/String;)V

    .line 608
    const-string v1, "gameActivitys"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 609
    if-nez v4, :cond_5e

    .line 611
    const/4 v0, 0x0

    .line 632
    :goto_5a
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/entity/b;->a(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 615
    :cond_5e
    const/4 v0, 0x0

    move v1, v0

    :goto_60
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_68

    move-object v0, v2

    goto :goto_5a

    .line 617
    :cond_68
    new-instance v5, Lcom/duoku/platform/ui/entity/a;

    invoke-direct {v5}, Lcom/duoku/platform/ui/entity/a;-><init>()V

    .line 618
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 619
    const-string v6, "activityid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/a;->a(Ljava/lang/String;)V

    .line 621
    const-string v6, "activityname"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 622
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/a;->b(Ljava/lang/String;)V

    .line 623
    const-string v6, "content"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 624
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/a;->c(Ljava/lang/String;)V

    .line 625
    const-string v6, "imageurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 626
    invoke-virtual {v5, v6}, Lcom/duoku/platform/ui/entity/a;->e(Ljava/lang/String;)V

    .line 627
    const-string v6, "state"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-virtual {v5, v0}, Lcom/duoku/platform/ui/entity/a;->d(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60
.end method

.method public k(Ljava/lang/String;)Lcom/duoku/platform/h/n;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 642
    new-instance v3, Lcom/duoku/platform/h/n;

    invoke-direct {v3}, Lcom/duoku/platform/h/n;-><init>()V

    .line 643
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 646
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 648
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 649
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 651
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/n;->setErrorCode(I)V

    .line 652
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/n;->setErrorString(Ljava/lang/String;)V

    .line 654
    if-eqz v1, :cond_24

    .line 690
    :goto_23
    return-object v3

    .line 659
    :cond_24
    const-string v1, "integralnum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/n;->a(Ljava/lang/String;)V

    .line 661
    const-string v1, "integralhistory"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_4b

    const-string v1, "null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 665
    check-cast v0, Lorg/json/JSONArray;

    .line 667
    const/4 v1, 0x0

    move v2, v1

    :goto_45
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_4f

    .line 686
    :cond_4b
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/n;->a(Ljava/util/List;)V

    goto :goto_23

    .line 669
    :cond_4f
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 670
    new-instance v5, Lcom/duoku/platform/h/m;

    invoke-direct {v5}, Lcom/duoku/platform/h/m;-><init>()V

    .line 671
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 672
    const-string v7, "time"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 673
    const-string v8, "description"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 674
    const-string v9, "amount"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 675
    const-string v10, "state"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/m;->a(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v5, v7}, Lcom/duoku/platform/h/m;->b(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v5, v9}, Lcom/duoku/platform/h/m;->d(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/m;->e(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v5, v8}, Lcom/duoku/platform/h/m;->c(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_45
.end method

.method public l(Ljava/lang/String;)Lcom/duoku/platform/h/p;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v3, Lcom/duoku/platform/h/p;

    invoke-direct {v3}, Lcom/duoku/platform/h/p;-><init>()V

    .line 705
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 707
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 708
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/p;->setErrorCode(I)V

    .line 711
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/p;->setErrorString(Ljava/lang/String;)V

    .line 713
    if-eqz v1, :cond_1f

    .line 733
    :goto_1e
    return-object v3

    .line 718
    :cond_1f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 719
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 720
    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_38

    .line 728
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/p;->a(Ljava/util/List;)V

    goto :goto_1e

    .line 722
    :cond_38
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 723
    new-instance v5, Lcom/duoku/platform/h/o;

    invoke-direct {v5}, Lcom/duoku/platform/h/o;-><init>()V

    .line 724
    const-string v6, "question"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/o;->a(Ljava/lang/String;)V

    .line 725
    const-string v6, "answer"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/o;->b(Ljava/lang/String;)V

    .line 726
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2e
.end method

.method public m(Ljava/lang/String;)Lcom/duoku/platform/h/l;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v3, Lcom/duoku/platform/h/l;

    invoke-direct {v3}, Lcom/duoku/platform/h/l;-><init>()V

    .line 748
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 750
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 751
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/l;->setErrorCode(I)V

    .line 754
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/l;->setErrorString(Ljava/lang/String;)V

    .line 756
    if-eqz v1, :cond_1f

    .line 785
    :goto_1e
    return-object v3

    .line 761
    :cond_1f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 762
    const-string v1, "giftlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 763
    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_38

    .line 780
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/l;->a(Ljava/util/List;)V

    goto :goto_1e

    .line 765
    :cond_38
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 766
    new-instance v5, Lcom/duoku/platform/h/k;

    invoke-direct {v5}, Lcom/duoku/platform/h/k;-><init>()V

    .line 768
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->a(Ljava/lang/String;)V

    .line 769
    const-string v6, "time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->b(Ljava/lang/String;)V

    .line 770
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->c(Ljava/lang/String;)V

    .line 771
    const-string v6, "number"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->d(Ljava/lang/String;)V

    .line 772
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->e(Ljava/lang/String;)V

    .line 773
    const-string v6, "endtime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->f(Ljava/lang/String;)V

    .line 774
    const-string v6, "imageurl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/k;->g(Ljava/lang/String;)V

    .line 775
    const-string v6, "giftcontent"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/k;->h(Ljava/lang/String;)V

    .line 778
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2e
.end method

.method public n(Ljava/lang/String;)Lcom/duoku/platform/h/u;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v0, Lcom/duoku/platform/h/u;

    invoke-direct {v0}, Lcom/duoku/platform/h/u;-><init>()V

    .line 800
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 801
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 802
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 803
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/u;->setErrorCode(I)V

    .line 804
    invoke-virtual {v0, v3}, Lcom/duoku/platform/h/u;->setErrorString(Ljava/lang/String;)V

    .line 805
    if-eqz v2, :cond_1f

    .line 815
    :goto_1e
    return-object v0

    .line 809
    :cond_1f
    const-string v2, "cashcardnum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/u;->a(Ljava/lang/String;)V

    .line 810
    const-string v2, "chargecardnum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/u;->b(Ljava/lang/String;)V

    .line 811
    const-string v2, "prizecardnum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/u;->c(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public o(Ljava/lang/String;)Lcom/duoku/platform/h/c;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 827
    new-instance v3, Lcom/duoku/platform/h/c;

    invoke-direct {v3}, Lcom/duoku/platform/h/c;-><init>()V

    .line 828
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 831
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 832
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 833
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/c;->setErrorCode(I)V

    .line 835
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/c;->setErrorString(Ljava/lang/String;)V

    .line 836
    if-eqz v1, :cond_24

    .line 864
    :goto_23
    return-object v3

    .line 840
    :cond_24
    const-string v1, "pageid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/c;->a(Ljava/lang/String;)V

    .line 841
    const-string v1, "cashcardlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 842
    const/4 v1, 0x0

    move v2, v1

    :goto_37
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_41

    .line 859
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/c;->a(Ljava/util/List;)V

    goto :goto_23

    .line 844
    :cond_41
    new-instance v5, Lcom/duoku/platform/h/b;

    invoke-direct {v5}, Lcom/duoku/platform/h/b;-><init>()V

    .line 845
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 846
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->a(Ljava/lang/String;)V

    .line 847
    const-string v6, "time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->b(Ljava/lang/String;)V

    .line 848
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->c(Ljava/lang/String;)V

    .line 849
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->d(Ljava/lang/String;)V

    .line 850
    const-string v6, "starttime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->e(Ljava/lang/String;)V

    .line 851
    const-string v6, "endtime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->f(Ljava/lang/String;)V

    .line 853
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/b;->g(Ljava/lang/String;)V

    .line 854
    const-string v6, "state"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/b;->h(Ljava/lang/String;)V

    .line 857
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_37
.end method

.method public p(Ljava/lang/String;)Lcom/duoku/platform/h/e;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 876
    new-instance v3, Lcom/duoku/platform/h/e;

    invoke-direct {v3}, Lcom/duoku/platform/h/e;-><init>()V

    .line 877
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 880
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 881
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 882
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/e;->setErrorCode(I)V

    .line 884
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/e;->setErrorString(Ljava/lang/String;)V

    .line 885
    if-eqz v1, :cond_24

    .line 908
    :goto_23
    return-object v3

    .line 889
    :cond_24
    const-string v1, "pageid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/e;->a(Ljava/lang/String;)V

    .line 890
    const-string v1, "chargecardlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 891
    const/4 v1, 0x0

    move v2, v1

    :goto_37
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_41

    .line 903
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/e;->a(Ljava/util/List;)V

    goto :goto_23

    .line 893
    :cond_41
    new-instance v5, Lcom/duoku/platform/h/d;

    invoke-direct {v5}, Lcom/duoku/platform/h/d;-><init>()V

    .line 894
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 895
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->b(Ljava/lang/String;)V

    .line 896
    const-string v6, "time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->c(Ljava/lang/String;)V

    .line 897
    const-string v6, "cardnum"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->e(Ljava/lang/String;)V

    .line 898
    const-string v6, "cardpassword"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->f(Ljava/lang/String;)V

    .line 899
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/d;->d(Ljava/lang/String;)V

    .line 900
    const-string v6, "cardtype"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/d;->a(Ljava/lang/String;)V

    .line 901
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_37
.end method

.method public q(Ljava/lang/String;)Lcom/duoku/platform/h/r;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 920
    new-instance v3, Lcom/duoku/platform/h/r;

    invoke-direct {v3}, Lcom/duoku/platform/h/r;-><init>()V

    .line 921
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 924
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 925
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 926
    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/r;->setErrorCode(I)V

    .line 928
    invoke-virtual {v3, v2}, Lcom/duoku/platform/h/r;->setErrorString(Ljava/lang/String;)V

    .line 929
    if-eqz v1, :cond_24

    .line 954
    :goto_23
    return-object v3

    .line 933
    :cond_24
    const-string v1, "pageid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/duoku/platform/h/r;->a(Ljava/lang/String;)V

    .line 934
    const-string v1, "prizecardlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 935
    const/4 v1, 0x0

    move v2, v1

    :goto_37
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v2, v1, :cond_41

    .line 949
    invoke-virtual {v3, v4}, Lcom/duoku/platform/h/r;->a(Ljava/util/List;)V

    goto :goto_23

    .line 937
    :cond_41
    new-instance v5, Lcom/duoku/platform/h/q;

    invoke-direct {v5}, Lcom/duoku/platform/h/q;-><init>()V

    .line 938
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 939
    const-string v6, "date"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->a(Ljava/lang/String;)V

    .line 940
    const-string v6, "time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->b(Ljava/lang/String;)V

    .line 941
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->c(Ljava/lang/String;)V

    .line 942
    const-string v6, "starttime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->d(Ljava/lang/String;)V

    .line 943
    const-string v6, "endtime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->e(Ljava/lang/String;)V

    .line 944
    const-string v6, "state"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->f(Ljava/lang/String;)V

    .line 945
    const-string v6, "prizeid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/h/q;->g(Ljava/lang/String;)V

    .line 946
    const-string v6, "cardid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/duoku/platform/h/q;->h(Ljava/lang/String;)V

    .line 947
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_37
.end method

.method public r(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 966
    new-instance v2, Lcom/duoku/platform/bean/f;

    invoke-direct {v2}, Lcom/duoku/platform/bean/f;-><init>()V

    .line 968
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 971
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 972
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 973
    const-string v4, "errormsg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-virtual {v2, v1}, Lcom/duoku/platform/bean/f;->setErrorCode(I)V

    .line 975
    invoke-virtual {v2, v4}, Lcom/duoku/platform/bean/f;->setErrorString(Ljava/lang/String;)V

    .line 976
    if-eqz v1, :cond_24

    .line 996
    :goto_23
    return-object v2

    .line 980
    :cond_24
    const-string v1, "logolist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 981
    const/4 v0, 0x0

    move v1, v0

    :goto_2c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_36

    .line 992
    invoke-virtual {v2, v3}, Lcom/duoku/platform/bean/f;->a(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 983
    :cond_36
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 984
    new-instance v5, Lcom/duoku/platform/bean/e;

    invoke-direct {v5}, Lcom/duoku/platform/bean/e;-><init>()V

    .line 985
    const-string v6, "sdate"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/e;->b(Ljava/lang/String;)V

    .line 986
    const-string v6, "edate"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/e;->c(Ljava/lang/String;)V

    .line 987
    const-string v6, "imgurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/e;->d(Ljava/lang/String;)V

    .line 988
    const-string v6, "des"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/e;->a(Ljava/lang/String;)V

    .line 989
    const-string v6, "level"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/duoku/platform/bean/e;->a(I)V

    .line 990
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c
.end method

.method public s(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1008
    new-instance v0, Lcom/duoku/platform/bean/b;

    invoke-direct {v0}, Lcom/duoku/platform/bean/b;-><init>()V

    .line 1012
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1013
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1014
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->setErrorCode(I)V

    .line 1016
    invoke-virtual {v0, v3}, Lcom/duoku/platform/bean/b;->setErrorString(Ljava/lang/String;)V

    .line 1017
    if-eqz v2, :cond_1f

    .line 1034
    :cond_1e
    :goto_1e
    return-object v0

    .line 1021
    :cond_1f
    const-string v2, "adid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->a(Ljava/lang/String;)V

    .line 1022
    const-string v2, "adtype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->b(Ljava/lang/String;)V

    .line 1023
    const-string v2, "imgurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->d(Ljava/lang/String;)V

    .line 1024
    const-string v2, "actionurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->e(Ljava/lang/String;)V

    .line 1025
    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/bean/b;->c(Ljava/lang/String;)V

    .line 1026
    const-string v2, "visibility"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1028
    const-string v2, "visibility"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1029
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "ad_visibility"

    invoke-virtual {v2, v3, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;I)Z

    goto :goto_1e
.end method

.method public t(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1046
    new-instance v2, Lcom/duoku/platform/ui/entity/d;

    invoke-direct {v2}, Lcom/duoku/platform/ui/entity/d;-><init>()V

    .line 1049
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1050
    const-string v3, "errorcode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1051
    const-string v4, "errormsg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1052
    invoke-virtual {v2, v3}, Lcom/duoku/platform/ui/entity/d;->setErrorCode(I)V

    .line 1053
    invoke-virtual {v2, v4}, Lcom/duoku/platform/ui/entity/d;->setErrorString(Ljava/lang/String;)V

    .line 1054
    if-eqz v3, :cond_20

    .line 1105
    :cond_1f
    :goto_1f
    return-object v2

    .line 1058
    :cond_20
    const-string v3, "adv_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1059
    invoke-virtual {v2, v3}, Lcom/duoku/platform/ui/entity/d;->a(Ljava/lang/String;)V

    .line 1060
    const-string v4, "hotgame_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/duoku/platform/ui/entity/d;->b(Ljava/lang/String;)V

    .line 1061
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1065
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1067
    const-string v3, "banner"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1068
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 1070
    :goto_4e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_58

    .line 1080
    invoke-virtual {v2, v4}, Lcom/duoku/platform/ui/entity/d;->a(Ljava/util/List;)V

    goto :goto_1f

    .line 1072
    :cond_58
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1073
    new-instance v5, Lcom/duoku/platform/bean/d;

    invoke-direct {v5}, Lcom/duoku/platform/bean/d;-><init>()V

    .line 1074
    const-string v6, "actionurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->b(Ljava/lang/String;)V

    .line 1075
    const-string v6, "imgurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->a(Ljava/lang/String;)V

    .line 1076
    const-string v6, "adid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/duoku/platform/bean/d;->e(Ljava/lang/String;)V

    .line 1077
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4e

    .line 1082
    :cond_85
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1084
    const-string v3, "recommend"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1085
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 1088
    :goto_99
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_a4

    .line 1101
    invoke-virtual {v2, v4}, Lcom/duoku/platform/ui/entity/d;->a(Ljava/util/List;)V

    goto/16 :goto_1f

    .line 1090
    :cond_a4
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1091
    new-instance v5, Lcom/duoku/platform/bean/d;

    invoke-direct {v5}, Lcom/duoku/platform/bean/d;-><init>()V

    .line 1092
    const-string v6, "downloadUrl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->b(Ljava/lang/String;)V

    .line 1093
    const-string v6, "gameIcon"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->a(Ljava/lang/String;)V

    .line 1094
    const-string v6, "gameId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->e(Ljava/lang/String;)V

    .line 1095
    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->c(Ljava/lang/String;)V

    .line 1096
    const-string v6, "downloadSize"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->f(Ljava/lang/String;)V

    .line 1097
    const-string v6, "packageName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/d;->d(Ljava/lang/String;)V

    .line 1098
    const-string v6, "detailurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/duoku/platform/bean/d;->g(Ljava/lang/String;)V

    .line 1099
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_99
.end method

.method public u(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1117
    new-instance v3, Lcom/duoku/platform/ui/entity/c;

    invoke-direct {v3}, Lcom/duoku/platform/ui/entity/c;-><init>()V

    .line 1121
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1122
    const-string v0, "errorcode"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1123
    const-string v1, "errormsg"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-virtual {v3, v0}, Lcom/duoku/platform/ui/entity/c;->setErrorCode(I)V

    .line 1125
    invoke-virtual {v3, v1}, Lcom/duoku/platform/ui/entity/c;->setErrorString(Ljava/lang/String;)V

    .line 1126
    if-eqz v0, :cond_20

    .line 1256
    :goto_1f
    return-object v3

    .line 1131
    :cond_20
    const-string v0, "errornotice"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1132
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_38

    move v1, v2

    .line 1140
    :goto_32
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_56

    .line 1172
    :cond_38
    invoke-virtual {v3, v6}, Lcom/duoku/platform/ui/entity/c;->b(Ljava/util/List;)V

    .line 1174
    const-string v0, "actionnotice"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1175
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_52

    .line 1185
    :goto_4c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_ae

    .line 1251
    :cond_52
    invoke-virtual {v3, v4}, Lcom/duoku/platform/ui/entity/c;->a(Ljava/util/List;)V

    goto :goto_1f

    .line 1145
    :cond_56
    new-instance v7, Lcom/duoku/platform/bean/c;

    invoke-direct {v7}, Lcom/duoku/platform/bean/c;-><init>()V

    .line 1146
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1148
    const-string v8, "title"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1149
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    if-nez v8, :cond_75

    .line 1140
    :cond_71
    :goto_71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    .line 1153
    :cond_75
    invoke-virtual {v7, v8}, Lcom/duoku/platform/bean/c;->a(Ljava/lang/String;)V

    .line 1155
    const-string v8, "content"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1156
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    if-eqz v8, :cond_71

    .line 1160
    const-string v8, "content"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/bean/c;->b(Ljava/lang/String;)V

    .line 1162
    const-string v8, "time"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1163
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    if-eqz v8, :cond_71

    .line 1167
    const-string v8, "time"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/duoku/platform/bean/c;->c(Ljava/lang/String;)V

    .line 1168
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 1192
    :cond_ae
    new-instance v5, Lcom/duoku/platform/bean/a;

    invoke-direct {v5}, Lcom/duoku/platform/bean/a;-><init>()V

    .line 1193
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1196
    const-string v6, "actiontype"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1197
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    if-nez v6, :cond_cc

    .line 1185
    :cond_c9
    :goto_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1201
    :cond_cc
    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/a;->e(Ljava/lang/String;)V

    .line 1203
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 1205
    const-string v6, "title"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1206
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    if-eqz v6, :cond_c9

    .line 1210
    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/a;->b(Ljava/lang/String;)V

    .line 1212
    const-string v6, "content"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1213
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    if-eqz v6, :cond_c9

    .line 1217
    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/a;->c(Ljava/lang/String;)V

    .line 1219
    const-string v6, "time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1220
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    if-eqz v6, :cond_c9

    .line 1225
    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1226
    if-ltz v7, :cond_c9

    .line 1230
    invoke-virtual {v5, v6}, Lcom/duoku/platform/bean/a;->a(Ljava/lang/String;)V

    .line 1231
    const-string v6, "link"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/duoku/platform/bean/a;->d(Ljava/lang/String;)V

    .line 1247
    :goto_121
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    .line 1233
    :cond_125
    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 1235
    const-string v6, "actionnoticeurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c9

    if-eqz v0, :cond_c9

    .line 1240
    invoke-virtual {v5, v0}, Lcom/duoku/platform/bean/a;->f(Ljava/lang/String;)V

    goto :goto_121
.end method

.method public v(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1268
    new-instance v0, Lcom/duoku/platform/h/w;

    invoke-direct {v0}, Lcom/duoku/platform/h/w;-><init>()V

    .line 1271
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1272
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1273
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1274
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/w;->setErrorCode(I)V

    .line 1275
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/w;->setErrorString(Ljava/lang/String;)V

    .line 1276
    if-eqz v2, :cond_1e

    .line 1284
    :cond_1e
    return-object v0
.end method

.method public w(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1296
    new-instance v0, Lcom/duoku/platform/h/t;

    invoke-direct {v0}, Lcom/duoku/platform/h/t;-><init>()V

    .line 1299
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1301
    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1302
    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1304
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->setErrorCode(I)V

    .line 1305
    invoke-virtual {v0, v3}, Lcom/duoku/platform/h/t;->setErrorString(Ljava/lang/String;)V

    .line 1307
    if-eqz v2, :cond_21

    .line 1433
    :cond_20
    :goto_20
    return-object v0

    .line 1312
    :cond_21
    const-string v2, "sessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1314
    const-string v2, "sessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1315
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->c(Ljava/lang/String;)V

    .line 1318
    :cond_32
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1320
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1321
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->b(Ljava/lang/String;)V

    .line 1324
    :cond_43
    const-string v2, "operateUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 1326
    const-string v2, "operateUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1327
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->a(Ljava/lang/String;)V

    .line 1330
    :cond_54
    const-string v2, "reddot_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 1332
    const-string v2, "reddot_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1333
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->a(I)V

    .line 1336
    :cond_65
    const-string v2, "screen_landscape_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 1338
    const-string v2, "screen_landscape_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/duoku/platform/util/Constants;->screen_landscape_flag:I

    .line 1341
    :cond_75
    const-string v2, "download_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 1343
    const-string v2, "download_flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1344
    if-ne v2, v4, :cond_17b

    .line 1346
    sput-boolean v4, Lcom/duoku/platform/util/Constants;->isDownloadNative:Z

    .line 1353
    :cond_87
    :goto_87
    const-string v2, "reddot_number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 1355
    const-string v2, "reddot_number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1356
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->b(I)V

    .line 1358
    :cond_98
    const-string v2, "omletflag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 1360
    const-string v2, "omletflag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1361
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->c(I)V

    .line 1362
    if-ne v2, v4, :cond_17f

    .line 1364
    sput-boolean v4, Lcom/duoku/platform/util/Constants;->isShowOlmet:Z

    .line 1371
    :cond_ad
    :goto_ad
    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_be

    .line 1373
    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1374
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->d(Ljava/lang/String;)V

    .line 1376
    :cond_be
    const-string v2, "pop_action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cf

    .line 1378
    const-string v2, "pop_action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1379
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->e(Ljava/lang/String;)V

    .line 1381
    :cond_cf
    const-string v2, "pop_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e0

    .line 1383
    const-string v2, "pop_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1384
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->f(Ljava/lang/String;)V

    .line 1386
    :cond_e0
    const-string v2, "download_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f1

    .line 1388
    const-string v2, "download_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1389
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->g(Ljava/lang/String;)V

    .line 1391
    :cond_f1
    const-string v2, "pop_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_102

    .line 1393
    const-string v2, "pop_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1394
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->h(Ljava/lang/String;)V

    .line 1396
    :cond_102
    const-string v2, "pop_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_113

    .line 1398
    const-string v2, "pop_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1399
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->i(Ljava/lang/String;)V

    .line 1401
    :cond_113
    const-string v2, "pop_message_btn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_124

    .line 1403
    const-string v2, "pop_message_btn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1404
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->j(Ljava/lang/String;)V

    .line 1406
    :cond_124
    const-string v2, "pop_delay_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 1408
    const-string v2, "pop_delay_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1409
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->d(I)V

    .line 1411
    :cond_135
    const-string v2, "download_appname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_146

    .line 1413
    const-string v2, "download_appname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1414
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->k(Ljava/lang/String;)V

    .line 1416
    :cond_146
    const-string v2, "download_game_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 1418
    const-string v2, "download_game_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->l(Ljava/lang/String;)V

    .line 1421
    :cond_157
    const-string v2, "download_size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_168

    .line 1423
    const-string v2, "download_size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1424
    invoke-virtual {v0, v2}, Lcom/duoku/platform/h/t;->m(Ljava/lang/String;)V

    .line 1426
    :cond_168
    const-string v2, "download_game_icon_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1428
    const-string v2, "download_game_icon_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1429
    invoke-virtual {v0, v1}, Lcom/duoku/platform/h/t;->n(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 1350
    :cond_17b
    sput-boolean v5, Lcom/duoku/platform/util/Constants;->isDownloadNative:Z

    goto/16 :goto_87

    .line 1368
    :cond_17f
    sput-boolean v5, Lcom/duoku/platform/util/Constants;->isShowOlmet:Z

    goto/16 :goto_ad
.end method

.method public x(Ljava/lang/String;)Lcom/duoku/platform/h/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1438
    new-instance v1, Lcom/duoku/platform/h/v;

    invoke-direct {v1}, Lcom/duoku/platform/h/v;-><init>()V

    .line 1441
    const/4 v0, 0x0

    .line 1442
    if-eqz p1, :cond_11

    .line 1445
    invoke-virtual {v1, v0}, Lcom/duoku/platform/h/v;->setErrorCode(I)V

    .line 1446
    invoke-virtual {v1, p1}, Lcom/duoku/platform/h/v;->setErrorString(Ljava/lang/String;)V

    .line 1453
    :goto_e
    if-eqz v0, :cond_10

    .line 1459
    :cond_10
    return-object v1

    .line 1450
    :cond_11
    const/4 v0, -0x1

    goto :goto_e
.end method
