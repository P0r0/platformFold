.class public enum Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;
.super Ljava/lang/Enum;
.source "NotificationItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "NotiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

.field public static final enum Follow:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

.field public static final enum Like:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

.field public static final enum Share:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

.field public static final enum System:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType$1;

    const-string v1, "Like"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Like:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 50
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType$2;

    const-string v1, "Follow"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Follow:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 52
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType$3;

    const-string v1, "Share"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Share:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 54
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType$4;

    const-string v1, "System"

    invoke-direct {v0, v1, v5}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->System:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Like:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Follow:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Share:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    aput-object v1, v0, v4

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->System:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    aput-object v1, v0, v5

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    return-object v0
.end method
