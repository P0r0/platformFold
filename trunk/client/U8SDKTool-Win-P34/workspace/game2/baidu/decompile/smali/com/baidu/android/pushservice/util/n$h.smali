.class final enum Lcom/baidu/android/pushservice/util/n$h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/android/pushservice/util/n$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/android/pushservice/util/n$h;

.field public static final enum b:Lcom/baidu/android/pushservice/util/n$h;

.field public static final enum c:Lcom/baidu/android/pushservice/util/n$h;

.field public static final enum d:Lcom/baidu/android/pushservice/util/n$h;

.field public static final enum e:Lcom/baidu/android/pushservice/util/n$h;

.field public static final enum f:Lcom/baidu/android/pushservice/util/n$h;

.field public static final enum g:Lcom/baidu/android/pushservice/util/n$h;

.field private static final synthetic h:[Lcom/baidu/android/pushservice/util/n$h;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/android/pushservice/util/n$h;

    const-string v1, "lappMsgId"

    invoke-direct {v0, v1, v3}, Lcom/baidu/android/pushservice/util/n$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/android/pushservice/util/n$h;->a:Lcom/baidu/android/pushservice/util/n$h;

    new-instance v0, Lcom/baidu/android/pushservice/util/n$h;

    const-string v1, "appid"

    invoke-direct {v0, v1, v4}, Lcom/baidu/android/pushservice/util/n$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/android/pushservice/util/n$h;->b:Lcom/baidu/android/pushservice/util/n$h;

    new-instance v0, Lcom/baidu/android/pushservice/util/n$h;

    const-string v1, "title"

    invoke-direct {v0, v1, v5}, Lcom/baidu/android/pushservice/util/n$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/android/pushservice/util/n$h;->c:Lcom/baidu/android/pushservice/util/n$h;

    new-instance v0, Lcom/baidu/android/pushservice/util/n$h;

    const-string v1, "description"

    invoke-direct {v0, v1, v6}, Lcom/baidu/android/pushservice/util/n$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/android/pushservice/util/n$h;->d:Lcom/baidu/android/pushservice/util/n$h;

    new-instance v0, Lcom/baidu/android/pushservice/util/n$h;

    const-string v1, "url"

    invoke-direct {v0, v1, v7}, Lcom/baidu/android/pushservice/util/n$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/android/pushservice/util/n$h;->e:Lcom/baidu/android/pushservice/util/n$h;

    new-instance v0, Lcom/baidu/android/pushservice/util/n$h;

    const-string v1, "timestamp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/android/pushservice/util/n$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/android/pushservice/util/n$h;->f:Lcom/baidu/android/pushservice/util/n$h;

    new-instance v0, Lcom/baidu/android/pushservice/util/n$h;

    const-string v1, "visited"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/android/pushservice/util/n$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/android/pushservice/util/n$h;->g:Lcom/baidu/android/pushservice/util/n$h;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/baidu/android/pushservice/util/n$h;

    sget-object v1, Lcom/baidu/android/pushservice/util/n$h;->a:Lcom/baidu/android/pushservice/util/n$h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/android/pushservice/util/n$h;->b:Lcom/baidu/android/pushservice/util/n$h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/android/pushservice/util/n$h;->c:Lcom/baidu/android/pushservice/util/n$h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/android/pushservice/util/n$h;->d:Lcom/baidu/android/pushservice/util/n$h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/android/pushservice/util/n$h;->e:Lcom/baidu/android/pushservice/util/n$h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/android/pushservice/util/n$h;->f:Lcom/baidu/android/pushservice/util/n$h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/android/pushservice/util/n$h;->g:Lcom/baidu/android/pushservice/util/n$h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/android/pushservice/util/n$h;->h:[Lcom/baidu/android/pushservice/util/n$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/android/pushservice/util/n$h;
    .registers 2

    const-class v0, Lcom/baidu/android/pushservice/util/n$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/util/n$h;

    return-object v0
.end method

.method public static values()[Lcom/baidu/android/pushservice/util/n$h;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/util/n$h;->h:[Lcom/baidu/android/pushservice/util/n$h;

    invoke-virtual {v0}, [Lcom/baidu/android/pushservice/util/n$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/android/pushservice/util/n$h;

    return-object v0
.end method
