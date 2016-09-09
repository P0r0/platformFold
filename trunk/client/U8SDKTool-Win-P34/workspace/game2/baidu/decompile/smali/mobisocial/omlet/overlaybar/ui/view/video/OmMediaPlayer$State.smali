.class public enum Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
.super Ljava/lang/Enum;
.source "OmMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum END:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum IDLE:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum INITIALIZED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum PAUSED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum PLAYBACK_COMPLETED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum PREPARED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum PREPARING:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum STARTED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

.field public static final enum STOPPED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$1;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->IDLE:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 18
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$2;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->INITIALIZED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 20
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$3;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 22
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$4;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v6}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STARTED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 24
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$5;

    const-string v1, "PLAYBACK_COMPLETED"

    invoke-direct {v0, v1, v7}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PLAYBACK_COMPLETED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 26
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$6;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PAUSED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 28
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$7;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STOPPED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 30
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$8;

    const-string v1, "PREPARING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARING:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 32
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$9;

    const-string v1, "END"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->END:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 34
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$10;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    .line 14
    const/16 v0, 0xa

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->IDLE:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->INITIALIZED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STARTED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v1, v0, v6

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PLAYBACK_COMPLETED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PAUSED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->STOPPED:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->PREPARING:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->END:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    aput-object v2, v0, v1

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$1;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    return-object v0
.end method
