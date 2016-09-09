.class enum Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;
.super Ljava/lang/Enum;
.source "VideoDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "DetailsBaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

.field public static final enum GAME:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

.field public static final enum GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

.field public static final enum PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType$1;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    .line 161
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType$2;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    .line 168
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType$3;

    const-string v1, "GAME_NOTI"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    aput-object v1, v0, v4

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

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
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$1;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    const-class v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    return-object v0
.end method
