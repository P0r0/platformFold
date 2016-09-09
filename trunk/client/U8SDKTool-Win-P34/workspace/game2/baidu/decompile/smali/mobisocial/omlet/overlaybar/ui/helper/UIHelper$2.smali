.class final Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$2;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getScore(Lmobisocial/longdan/LDProtocols$LDPostContainer;)D
    .registers 4
    .param p1, "post"    # Lmobisocial/longdan/LDProtocols$LDPostContainer;

    .prologue
    .line 206
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Score:Ljava/lang/Double;

    if-eqz v0, :cond_13

    .line 207
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Score:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 213
    :goto_12
    return-wide v0

    .line 208
    :cond_13
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->Score:Ljava/lang/Double;

    if-eqz v0, :cond_26

    .line 209
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->Score:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_12

    .line 210
    :cond_26
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->MessagePost:Lmobisocial/longdan/LDProtocols$LDMessagePost;

    if-eqz v0, :cond_39

    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->MessagePost:Lmobisocial/longdan/LDProtocols$LDMessagePost;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDMessagePost;->Score:Ljava/lang/Double;

    if-eqz v0, :cond_39

    .line 211
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->MessagePost:Lmobisocial/longdan/LDProtocols$LDMessagePost;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDMessagePost;->Score:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_12

    .line 213
    :cond_39
    const-wide/16 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 203
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    check-cast p2, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    invoke-virtual {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$2;->compare(Lmobisocial/longdan/LDProtocols$LDPostContainer;Lmobisocial/longdan/LDProtocols$LDPostContainer;)I

    move-result v0

    return v0
.end method

.method public compare(Lmobisocial/longdan/LDProtocols$LDPostContainer;Lmobisocial/longdan/LDProtocols$LDPostContainer;)I
    .registers 8
    .param p1, "post1"    # Lmobisocial/longdan/LDProtocols$LDPostContainer;
    .param p2, "post2"    # Lmobisocial/longdan/LDProtocols$LDPostContainer;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$2;->getScore(Lmobisocial/longdan/LDProtocols$LDPostContainer;)D

    move-result-wide v0

    .line 220
    .local v0, "score1":D
    invoke-direct {p0, p2}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$2;->getScore(Lmobisocial/longdan/LDProtocols$LDPostContainer;)D

    move-result-wide v2

    .line 221
    .local v2, "score2":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_e

    .line 222
    const/4 v4, 0x1

    .line 226
    :goto_d
    return v4

    .line 223
    :cond_e
    cmpl-double v4, v0, v2

    if-lez v4, :cond_14

    .line 224
    const/4 v4, -0x1

    goto :goto_d

    .line 226
    :cond_14
    const/4 v4, 0x0

    goto :goto_d
.end method
