.class public Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse$StatusValues;
.super Ljava/lang/Object;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusValues"
.end annotation


# static fields
.field public static final VALUE_CONFIRM_SCOPE_LINK:Ljava/lang/String; = "CONFIRM_SCOPE_LINK"

.field public static final VALUE_LINK:Ljava/lang/String; = "LINK"

.field public static final VALUE_SIGNED_IN:Ljava/lang/String; = "SIGNED_IN"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
