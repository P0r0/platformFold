.class public final Lmobisocial/omlib/model/OmletModel$Identities;
.super Ljava/lang/Object;
.source "OmletModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/model/OmletModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/model/OmletModel$Identities$IdentityColumns;
    }
.end annotation


# static fields
.field public static final TABLE:Ljava/lang/String; = "identities"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method public static final getUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 380
    invoke-static {p0}, Lmobisocial/omlib/model/OmletModel;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "identities"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final uriForIdentity(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 384
    invoke-static {p0}, Lmobisocial/omlib/model/OmletModel$Identities;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
