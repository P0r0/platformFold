.class public Lmobisocial/serialization/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/serialization/SerializationUtils$ByteArrayToBase64TypeAdapter;
    }
.end annotation


# static fields
.field private static final customGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 21
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, [B

    new-instance v2, Lmobisocial/serialization/SerializationUtils$ByteArrayToBase64TypeAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmobisocial/serialization/SerializationUtils$ByteArrayToBase64TypeAdapter;-><init>(Lmobisocial/serialization/SerializationUtils$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lmobisocial/serialization/SerializationUtils;->customGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TTClass;>;)TTClass;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TTClass;>;"
    sget-object v0, Lmobisocial/serialization/SerializationUtils;->customGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lmobisocial/serialization/SerializationUtils;->customGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson([BLjava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p0, "json"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClass:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TTClass;>;)TTClass;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TTClass;>;"
    sget-object v0, Lmobisocial/serialization/SerializationUtils;->customGson:Lcom/google/gson/Gson;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClass:",
            "Ljava/lang/Object;",
            ">(TTClass;)[B"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "obj":Ljava/lang/Object;, "TTClass;"
    sget-object v0, Lmobisocial/serialization/SerializationUtils;->customGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClass:",
            "Ljava/lang/Object;",
            ">(TTClass;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "obj":Ljava/lang/Object;, "TTClass;"
    sget-object v0, Lmobisocial/serialization/SerializationUtils;->customGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
