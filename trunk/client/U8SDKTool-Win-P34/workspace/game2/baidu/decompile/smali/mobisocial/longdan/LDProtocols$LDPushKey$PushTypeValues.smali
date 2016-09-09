.class public Lmobisocial/longdan/LDProtocols$LDPushKey$PushTypeValues;
.super Ljava/lang/Object;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols$LDPushKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushTypeValues"
.end annotation


# static fields
.field public static final VALUE_APNS:Ljava/lang/String; = "APNS"

.field public static final VALUE_Amazon:Ljava/lang/String; = "Amazon"

.field public static final VALUE_Baidu:Ljava/lang/String; = "Baidu"

.field public static final VALUE_GCM:Ljava/lang/String; = "GCM"

.field public static final VALUE_WPNS:Ljava/lang/String; = "WPNS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
