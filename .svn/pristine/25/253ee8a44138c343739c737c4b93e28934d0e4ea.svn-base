.class public Lcom/baidu/mtjstatsdk/game/BDGameDataObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/game/BDGameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

.field private e:Lcom/baidu/mtjstatsdk/cf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/baidu/mtjstatsdk/ce;

    invoke-direct {v0, p0}, Lcom/baidu/mtjstatsdk/ce;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->e:Lcom/baidu/mtjstatsdk/cf;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->c:Ljava/util/Map;

    .line 125
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameInfo;
    .registers 4

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->generateMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->readData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->fromJSON(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    move-result-object v0

    .line 132
    if-nez v0, :cond_34

    .line 133
    new-instance v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;-><init>()V

    .line 136
    :cond_34
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->e:Lcom/baidu/mtjstatsdk/cf;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->setCallback(Lcom/baidu/mtjstatsdk/cf;)V

    .line 137
    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->setAccountId(Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onChargeRequest(Ljava/lang/String;Ljava/lang/String;DII)V
    .registers 16

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_e

    .line 191
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->onChargeRequest(Ljava/lang/String;Ljava/lang/String;DII)V

    .line 193
    :cond_e
    return-void
.end method

.method public onChargeSuccess(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->onChargeSuccess(Ljava/lang/String;)V

    .line 199
    :cond_9
    return-void
.end method

.method public onPurchase(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->onPurchase(Ljava/lang/String;II)V

    .line 205
    :cond_9
    return-void
.end method

.method public onTaskEnd(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->onTaskEnd(Ljava/lang/String;ZLjava/lang/String;)V

    .line 223
    :cond_9
    return-void
.end method

.method public onTaskStart(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->onTaskStart(Ljava/lang/String;)V

    .line 217
    :cond_9
    return-void
.end method

.method public onUse(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 209
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->onUse(Ljava/lang/String;I)V

    .line 211
    :cond_9
    return-void
.end method

.method public setAccountAge(I)V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->setAccountAge(I)V

    .line 162
    :cond_9
    return-void
.end method

.method public setAccountGender(I)V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->setAccountGender(I)V

    .line 181
    :cond_9
    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    .line 144
    if-nez v0, :cond_13

    .line 145
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_13
    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    .line 150
    return-void
.end method

.method public setAccountLevel(I)V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_a

    .line 166
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->onLevelUp(IZ)V

    .line 168
    :cond_a
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 154
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->setAccountName(Ljava/lang/String;)V

    .line 156
    :cond_9
    return-void
.end method

.method public setAccountServer(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_f

    .line 172
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->setAccountServer(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, v1, v1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->onLevelUp(IZ)V

    .line 175
    :cond_f
    return-void
.end method

.method public setAccountType(I)V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->d:Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->setAccountType(I)V

    .line 187
    :cond_9
    return-void
.end method
