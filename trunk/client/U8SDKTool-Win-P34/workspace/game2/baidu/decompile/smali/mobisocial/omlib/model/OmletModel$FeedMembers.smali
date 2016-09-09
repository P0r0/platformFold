.class public final Lmobisocial/omlib/model/OmletModel$FeedMembers;
.super Ljava/lang/Object;
.source "OmletModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/model/OmletModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeedMembers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/model/OmletModel$FeedMembers$FeedMemberColumns;
    }
.end annotation


# static fields
.field public static final TABLE:Ljava/lang/String; = "feedMembers"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    return-void
.end method

.method public static final getUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 595
    invoke-static {p0}, Lmobisocial/omlib/model/OmletModel;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "feedMembers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final uriForFeed(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 603
    invoke-static {p0, p1, p2}, Lmobisocial/omlib/model/OmletModel$MembersOfFeed;->uriForFeed(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
