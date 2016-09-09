.class public Lcom/ta/utdid2/android/utils/DebugUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DBG:Z = false

.field private static final PROPERTY_DEBUG:Ljava/lang/String; = "alidebug"

.field private static mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mGetIntMethod:Ljava/lang/reflect/Method;

.field private static mGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 42
    const-string v2, "alidebug"

    invoke-static {v2, v1}, Lcom/ta/utdid2/android/utils/DebugUtils;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_14

    :goto_b
    sput-boolean v0, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    .line 44
    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    .line 45
    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetMethod:Ljava/lang/reflect/Method;

    .line 46
    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetIntMethod:Ljava/lang/reflect/Method;

    return-void

    :cond_14
    move v0, v1

    .line 42
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 16
    invoke-static {}, Lcom/ta/utdid2/android/utils/DebugUtils;->init()V

    .line 18
    const/4 v1, 0x0

    .line 21
    :try_start_4
    sget-object v0, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    .line 26
    :goto_14
    return-object v0

    .line 22
    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_14
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 7

    .prologue
    .line 30
    invoke-static {}, Lcom/ta/utdid2/android/utils/DebugUtils;->init()V

    .line 34
    :try_start_3
    sget-object v0, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetIntMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1f

    move-result p1

    .line 39
    :goto_1e
    return p1

    .line 36
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method private static init()V
    .registers 5

    .prologue
    .line 49
    :try_start_0
    sget-object v0, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    if-nez v0, :cond_33

    .line 50
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetMethod:Ljava/lang/reflect/Method;

    .line 53
    sget-object v0, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetIntMethod:Ljava/lang/reflect/Method;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 58
    :cond_33
    :goto_33
    return-void

    .line 55
    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method
