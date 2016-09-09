.class public enum Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
.super Ljava/lang/Enum;
.source "OmletOobApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/api/OmletOobApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "MessagingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

.field public static final enum Available:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

.field public static final enum LocalUserNotAuthenticated:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

.field public static final enum LocalUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

.field public static final enum LookupCancelled:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

.field public static final enum NetworkException:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

.field public static final enum RemoteUserNotAvailable:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

.field public static final enum RemoteUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

.field public static final enum RequiresNetworkTest:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$1;

    const-string v1, "Available"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->Available:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 17
    new-instance v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$2;

    const-string v1, "LookupCancelled"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LookupCancelled:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 19
    new-instance v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$3;

    const-string v1, "RequiresNetworkTest"

    invoke-direct {v0, v1, v5}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RequiresNetworkTest:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 21
    new-instance v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$4;

    const-string v1, "NetworkException"

    invoke-direct {v0, v1, v6}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->NetworkException:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 23
    new-instance v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$5;

    const-string v1, "LocalUserNotAuthenticated"

    invoke-direct {v0, v1, v7}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LocalUserNotAuthenticated:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 25
    new-instance v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$6;

    const-string v1, "LocalUserOptedOut"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LocalUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 27
    new-instance v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$7;

    const-string v1, "RemoteUserNotAvailable"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RemoteUserNotAvailable:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 29
    new-instance v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$8;

    const-string v1, "RemoteUserOptedOut"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RemoteUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    sget-object v1, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->Available:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LookupCancelled:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    aput-object v1, v0, v4

    sget-object v1, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RequiresNetworkTest:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    aput-object v1, v0, v5

    sget-object v1, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->NetworkException:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    aput-object v1, v0, v6

    sget-object v1, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LocalUserNotAuthenticated:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LocalUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RemoteUserNotAvailable:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RemoteUserOptedOut:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    aput-object v2, v0, v1

    sput-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->$VALUES:[Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlib/api/OmletOobApi$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlib/api/OmletOobApi$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->$VALUES:[Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    invoke-virtual {v0}, [Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    return-object v0
.end method
