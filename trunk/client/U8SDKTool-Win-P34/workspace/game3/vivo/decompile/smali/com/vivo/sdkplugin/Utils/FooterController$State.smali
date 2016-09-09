.class public final enum Lcom/vivo/sdkplugin/Utils/FooterController$State;
.super Ljava/lang/Enum;


# static fields
.field public static final enum EMPTY:Lcom/vivo/sdkplugin/Utils/FooterController$State;

.field public static final enum HAS_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

.field public static final enum LOADING:Lcom/vivo/sdkplugin/Utils/FooterController$State;

.field public static final enum NO_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

.field private static final synthetic a:[Lcom/vivo/sdkplugin/Utils/FooterController$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;

    const-string v1, "HAS_MORE"

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FooterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->HAS_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    new-instance v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/vivo/sdkplugin/Utils/FooterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->LOADING:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    new-instance v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;

    const-string v1, "NO_MORE"

    invoke-direct {v0, v1, v4}, Lcom/vivo/sdkplugin/Utils/FooterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->NO_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    new-instance v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v5}, Lcom/vivo/sdkplugin/Utils/FooterController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->EMPTY:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vivo/sdkplugin/Utils/FooterController$State;

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FooterController$State;->HAS_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FooterController$State;->LOADING:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FooterController$State;->NO_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FooterController$State;->EMPTY:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->a:[Lcom/vivo/sdkplugin/Utils/FooterController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/sdkplugin/Utils/FooterController$State;
    .registers 2

    const-class v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;

    return-object v0
.end method

.method public static values()[Lcom/vivo/sdkplugin/Utils/FooterController$State;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->a:[Lcom/vivo/sdkplugin/Utils/FooterController$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/vivo/sdkplugin/Utils/FooterController$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
