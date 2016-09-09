.class public Lmobisocial/omlib/client/ClientAuthUtils$Flow;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientAuthUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flow"
.end annotation


# static fields
.field public static final AUTO_CREATE:Ljava/lang/String; = "AutoCreate"

.field public static final DEFAULT:Ljava/lang/String; = "Default"

.field public static final USER_LOGIN:Ljava/lang/String; = "UserLogin"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
