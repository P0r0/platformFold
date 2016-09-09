.class abstract Lcom/baidu/bdgame/sdk/obf/ei$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ec;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 250
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/ec;-><init>()V

    .line 251
    invoke-virtual {p0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/ei$g;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/ec;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 259
    :cond_c
    :goto_c
    return-object v0

    .line 254
    :cond_d
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ec;->a()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/baidu/bdgame/sdk/obf/ei$g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/ec;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v1

    .line 259
    goto :goto_c
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ef;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ef;-><init>()V

    .line 105
    invoke-virtual {v2, p2}, Lcom/baidu/bdgame/sdk/obf/ef;->b(Ljava/lang/String;)V

    .line 108
    const-string v3, "Name"

    invoke-static {p3, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 110
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 166
    :goto_37
    return-object v0

    .line 113
    :cond_38
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ef;->a(Ljava/lang/String;)V

    .line 117
    const-string v3, "ActionType"

    invoke-static {p3, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 120
    :try_start_47
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 121
    packed-switch v3, :pswitch_data_132

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ef;->a(I)V

    .line 130
    const-class v3, Lcom/baidu/bdgame/sdk/obf/ei$g;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionType format mismatch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_72} :catch_a0

    .line 140
    :cond_72
    :goto_72
    const-string v3, "Channel"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 141
    if-nez v4, :cond_c2

    .line 142
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 143
    goto :goto_37

    .line 126
    :pswitch_9c
    :try_start_9c
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ef;->a(I)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_72

    .line 133
    :catch_a0
    move-exception v3

    .line 134
    const-class v3, Lcom/baidu/bdgame/sdk/obf/ei$g;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionType format mismatch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 145
    :cond_c2
    new-instance v5, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    :goto_c8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_103

    .line 148
    :try_start_ce
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/baidu/bdgame/sdk/obf/ei$g;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ec;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_db

    .line 150
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_ce .. :try_end_db} :catch_de

    .line 146
    :cond_db
    :goto_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    .line 152
    :catch_de
    move-exception v3

    .line 153
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 154
    const-class v3, Lcom/baidu/bdgame/sdk/obf/ei$g;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel mismatch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    .line 158
    :cond_103
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_12c

    .line 159
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 160
    goto/16 :goto_37

    .line 163
    :cond_12c
    invoke-virtual {v2, v5}, Lcom/baidu/bdgame/sdk/obf/ef;->a(Ljava/util/List;)V

    move-object v0, v2

    .line 166
    goto/16 :goto_37

    .line 121
    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
    .end packed-switch
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/ec;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/ec;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->a(Ljava/lang/String;)V

    .line 171
    const-string v0, "Name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->b(Ljava/lang/String;)V

    .line 174
    const-string v0, "PayID"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 176
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayID absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 244
    :goto_40
    return v0

    .line 179
    :cond_41
    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->d(Ljava/lang/String;)V

    .line 183
    const-string v0, "PayType"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 185
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayType absent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 186
    goto :goto_40

    .line 189
    :cond_72
    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->c(Ljava/lang/String;)V

    .line 193
    const-string v0, "AmountLimit"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ei;->a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v2

    .line 195
    iget-object v3, v2, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_a3

    .line 196
    const-class v2, Lcom/baidu/bdgame/sdk/obf/ei;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmountLimit format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 197
    goto :goto_40

    .line 199
    :cond_a3
    iget-object v0, v2, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ky;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lcom/baidu/bdgame/sdk/obf/ec;->a(J)V

    .line 200
    iget-object v0, v2, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ky;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ec;->b(J)V

    .line 204
    const-string v0, "QueryTime"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d8

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 208
    :try_start_d1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->a(I)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d8} :catch_122

    .line 219
    :cond_d8
    const-string v0, "HintText"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 221
    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->e(Ljava/lang/String;)V

    .line 229
    :goto_e7
    const-string v0, "AmountList"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_f3

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_f3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_152

    .line 234
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ei;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v2

    .line 235
    iget-object v3, v2, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_14b

    .line 236
    const-class v2, Lcom/baidu/bdgame/sdk/obf/ei;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmountList format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 237
    goto/16 :goto_40

    .line 210
    :catch_122
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryTime format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 213
    goto/16 :goto_40

    .line 223
    :cond_145
    const-string v0, ""

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->e(Ljava/lang/String;)V

    goto :goto_e7

    .line 240
    :cond_14b
    iget-object v0, v2, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->a(Ljava/util/List;)V

    .line 244
    :cond_152
    const/4 v0, 0x1

    goto/16 :goto_40
.end method
