.class public Lmobisocial/longdan/LDProtocols$LDDeviceToIdpAdministrativeResponseProtocol;
.super Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToIdpAdministrativeResponseProtocol"
.end annotation


# instance fields
.field public AccountDetailsResponse:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field

.field public GetDeviceRecords:Lmobisocial/longdan/LDProtocols$LDGetDeviceRecordsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field public GetIdentityRecordsResponse:Lmobisocial/longdan/LDProtocols$LDGetIdentityRecordsResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "I"
    .end annotation
.end field

.field public ListFlaggedUsers:Lmobisocial/longdan/LDProtocols$LDListFlaggedUsersResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 418
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;-><init>()V

    return-void
.end method
