.class public enum Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;
.super Ljava/lang/Enum;
.source "OmletFeedApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/api/OmletFeedApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "StatusIndicator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

.field public static final enum AUDIO:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

.field public static final enum NOTHING:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

.field public static final enum PICTURE:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

.field public static final enum TYPING:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;


# instance fields
.field action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator$1;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->NOTHING:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    .line 61
    new-instance v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator$2;

    const-string v1, "TYPING"

    const-string v2, "typing"

    invoke-direct {v0, v1, v4, v2}, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->TYPING:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    .line 63
    new-instance v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator$3;

    const-string v1, "PICTURE"

    const-string v2, "taking a picture"

    invoke-direct {v0, v1, v5, v2}, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->PICTURE:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    .line 65
    new-instance v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator$4;

    const-string v1, "AUDIO"

    const-string v2, "recording audio"

    invoke-direct {v0, v1, v6, v2}, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->AUDIO:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    sget-object v1, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->NOTHING:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->TYPING:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    aput-object v1, v0, v4

    sget-object v1, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->PICTURE:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    aput-object v1, v0, v5

    sget-object v1, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->AUDIO:Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    aput-object v1, v0, v6

    sput-object v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->$VALUES:[Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->action:Ljava/lang/String;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lmobisocial/omlib/api/OmletFeedApi$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lmobisocial/omlib/api/OmletFeedApi$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->$VALUES:[Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    invoke-virtual {v0}, [Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;->action:Ljava/lang/String;

    return-object v0
.end method
