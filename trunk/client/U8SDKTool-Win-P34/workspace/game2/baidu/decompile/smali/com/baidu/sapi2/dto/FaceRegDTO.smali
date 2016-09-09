.class public Lcom/baidu/sapi2/dto/FaceRegDTO;
.super Lcom/baidu/sapi2/dto/SapiDTO;
.source "FaceRegDTO.java"


# static fields
.field public static final PICTURE_NUM:I = 0x3


# instance fields
.field public bduss:Ljava/lang/String;

.field public picturesEncoded:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/sapi2/dto/SapiDTO;-><init>()V

    .line 24
    return-void
.end method
