.class public final Lmobisocial/omlib/model/OmletModel;
.super Ljava/lang/Object;
.source "OmletModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/model/OmletModel$Blobs;,
        Lmobisocial/omlib/model/OmletModel$FeedMembers;,
        Lmobisocial/omlib/model/OmletModel$Stickers;,
        Lmobisocial/omlib/model/OmletModel$FeedsForAccount;,
        Lmobisocial/omlib/model/OmletModel$Chats;,
        Lmobisocial/omlib/model/OmletModel$MembersOfFeed;,
        Lmobisocial/omlib/model/OmletModel$ObjectsWithSender;,
        Lmobisocial/omlib/model/OmletModel$Accounts;,
        Lmobisocial/omlib/model/OmletModel$Identities;,
        Lmobisocial/omlib/model/OmletModel$Settings;,
        Lmobisocial/omlib/model/OmletModel$Objects;,
        Lmobisocial/omlib/model/OmletModel$Feeds;,
        Lmobisocial/omlib/model/OmletModel$OMBaseColumns;,
        Lmobisocial/omlib/model/OmletModel$DisplayIdentityType;
    }
.end annotation


# static fields
.field static sAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    return-void
.end method

.method public static final getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_3
    return-object v0

    .line 53
    :cond_4
    sget-object v0, Lmobisocial/omlib/model/OmletModel;->sAuthority:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 54
    sget-object v0, Lmobisocial/omlib/model/OmletModel;->sAuthority:Ljava/lang/String;

    goto :goto_3

    .line 55
    :cond_b
    const-string v0, "%s.omlib.provider"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobisocial/omlib/model/OmletModel;->sAuthority:Ljava/lang/String;

    goto :goto_3
.end method

.method static final getBaseUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Lmobisocial/omlib/model/OmletModel;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
