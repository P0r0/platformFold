.class public enum Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;
.super Ljava/lang/Enum;
.source "IMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "VideoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

.field public static final enum FitToContainer:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

.field public static final enum FullScreen:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState$1;

    const-string v1, "FullScreen"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->FullScreen:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    .line 11
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState$2;

    const-string v1, "FitToContainer"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->FitToContainer:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->FullScreen:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->FitToContainer:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    aput-object v1, v0, v3

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/ui/view/video/IMediaController$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$1;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    return-object v0
.end method
