.class public Lcom/baidu/sapi2/dto/IqiyiLoginDTO;
.super Lcom/baidu/sapi2/dto/SapiDTO;
.source "IqiyiLoginDTO.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public openID:Ljava/lang/String;

.field public phoneNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/baidu/sapi2/dto/SapiDTO;-><init>()V

    return-void
.end method
