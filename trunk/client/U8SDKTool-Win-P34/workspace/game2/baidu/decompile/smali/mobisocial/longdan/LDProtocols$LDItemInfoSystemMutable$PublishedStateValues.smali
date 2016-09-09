.class public Lmobisocial/longdan/LDProtocols$LDItemInfoSystemMutable$PublishedStateValues;
.super Ljava/lang/Object;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols$LDItemInfoSystemMutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublishedStateValues"
.end annotation


# static fields
.field public static final VALUE_Deleted:Ljava/lang/String; = "Deleted"

.field public static final VALUE_InReview:Ljava/lang/String; = "InReview"

.field public static final VALUE_NotPublished:Ljava/lang/String; = "NotPublished"

.field public static final VALUE_Published:Ljava/lang/String; = "Published"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
