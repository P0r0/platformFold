.class public Lmobisocial/longdan/LDProtocols$LDDeviceToClusterWallPostRequestProtocol;
.super Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDDeviceToClusterWallPostRequestProtocol"
.end annotation


# instance fields
.field public AddVideoView:Lmobisocial/longdan/LDProtocols$LDAddViewRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "v"
    .end annotation
.end field

.field public DeletePostRequest:Lmobisocial/longdan/LDProtocols$LDDeletePostRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dp"
    .end annotation
.end field

.field public FollowUser:Lmobisocial/longdan/LDProtocols$LDFollowUserRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field

.field public GetAccountsFollowedRequest:Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gaf"
    .end annotation
.end field

.field public GetExternalShareLink:Lmobisocial/longdan/LDProtocols$LDGetExternalShareLinkRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ges"
    .end annotation
.end field

.field public GetFollowers:Lmobisocial/longdan/LDProtocols$LDGetFollowersRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gf"
    .end annotation
.end field

.field public GetFollowingWall:Lmobisocial/longdan/LDProtocols$LDGetFollowingWallRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gfw"
    .end annotation
.end field

.field public GetGameWall:Lmobisocial/longdan/LDProtocols$LDGetGameWallRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ggw"
    .end annotation
.end field

.field public GetPost:Lmobisocial/longdan/LDProtocols$LDGetPostRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gp"
    .end annotation
.end field

.field public GetStandardPostTags:Lmobisocial/longdan/LDProtocols$LDGetStandardPostTagsRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gspt"
    .end annotation
.end field

.field public GetUserWall:Lmobisocial/longdan/LDProtocols$LDGetUserWallRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guw"
    .end annotation
.end field

.field public LikePost:Lmobisocial/longdan/LDProtocols$LDLikePostRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "l"
    .end annotation
.end field

.field public PostMessage:Lmobisocial/longdan/LDProtocols$LDPostMessageRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm"
    .end annotation
.end field

.field public PostScreenShot:Lmobisocial/longdan/LDProtocols$LDPostScreenShotRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ps"
    .end annotation
.end field

.field public PostVideo:Lmobisocial/longdan/LDProtocols$LDPostVideoRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pv"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 826
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;-><init>()V

    return-void
.end method
