.class final Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$1;
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
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCreationDate(Lmobisocial/longdan/LDProtocols$LDPostContainer;)J
    .registers 4
    .param p1, "post"    # Lmobisocial/longdan/LDProtocols$LDPostContainer;

    .prologue
    .line 178
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-wide v0, v0, Lmobisocial/longdan/LDProtocols$LDVideoPost;->CreationDate:J

    .line 185
    :goto_8
    return-wide v0

    .line 180
    :cond_9
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-wide v0, v0, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->CreationDate:J

    goto :goto_8

    .line 182
    :cond_12
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->MessagePost:Lmobisocial/longdan/LDProtocols$LDMessagePost;

    if-eqz v0, :cond_1b

    .line 183
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->MessagePost:Lmobisocial/longdan/LDProtocols$LDMessagePost;

    iget-wide v0, v0, Lmobisocial/longdan/LDProtocols$LDMessagePost;->CreationDate:J

    goto :goto_8

    .line 185
    :cond_1b
    const-wide/16 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 175
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    check-cast p2, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    invoke-virtual {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$1;->compare(Lmobisocial/longdan/LDProtocols$LDPostContainer;Lmobisocial/longdan/LDProtocols$LDPostContainer;)I

    move-result v0

    return v0
.end method

.method public compare(Lmobisocial/longdan/LDProtocols$LDPostContainer;Lmobisocial/longdan/LDProtocols$LDPostContainer;)I
    .registers 8
    .param p1, "post1"    # Lmobisocial/longdan/LDProtocols$LDPostContainer;
    .param p2, "post2"    # Lmobisocial/longdan/LDProtocols$LDPostContainer;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$1;->getCreationDate(Lmobisocial/longdan/LDProtocols$LDPostContainer;)J

    move-result-wide v0

    .line 192
    .local v0, "creation1":J
    invoke-direct {p0, p2}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$1;->getCreationDate(Lmobisocial/longdan/LDProtocols$LDPostContainer;)J

    move-result-wide v2

    .line 193
    .local v2, "creation2":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    .line 194
    const/4 v4, 0x1

    .line 198
    :goto_d
    return v4

    .line 195
    :cond_e
    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    .line 196
    const/4 v4, -0x1

    goto :goto_d

    .line 198
    :cond_14
    const/4 v4, 0x0

    goto :goto_d
.end method
