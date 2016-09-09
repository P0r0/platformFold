.class public Lmobisocial/omlib/service/OmlibContentProvider$MimeTypes;
.super Ljava/lang/Object;
.source "OmlibContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeTypes"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "vnd.android.cursor.item/vnd.mobisocial.omlib.account"

.field public static final FEED:Ljava/lang/String; = "vnd.android.cursor.item/vnd.mobisocial.omlib.feed"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
