.class public Lmobisocial/longdan/LDObjects$ProfilePublicState;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfilePublicState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/longdan/LDObjects$ProfilePublicState$FeatureValues;
    }
.end annotation


# instance fields
.field public Features:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Settings:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmobisocial/longdan/LDProtocols$LDFeatureSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    .line 163
    return-void
.end method
