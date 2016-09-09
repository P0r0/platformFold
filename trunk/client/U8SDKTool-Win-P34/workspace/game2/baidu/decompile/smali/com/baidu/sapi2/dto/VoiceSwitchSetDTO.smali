.class public Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;
.super Lcom/baidu/sapi2/dto/SapiDTO;
.source "VoiceSwitchSetDTO.java"


# instance fields
.field public action:Lcom/baidu/sapi2/utils/enums/Switch;

.field public bduss:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/sapi2/dto/SapiDTO;-><init>()V

    return-void
.end method
