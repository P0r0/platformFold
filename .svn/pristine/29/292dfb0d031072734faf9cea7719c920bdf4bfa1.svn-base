.class Lmobisocial/serialization/SerializationUtils$ByteArrayToBase64TypeAdapter;
.super Ljava/lang/Object;
.source "SerializationUtils.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/serialization/SerializationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayToBase64TypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer",
        "<[B>;",
        "Lcom/google/gson/JsonDeserializer",
        "<[B>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobisocial/serialization/SerializationUtils$1;)V
    .registers 2
    .param p1, "x0"    # Lmobisocial/serialization/SerializationUtils$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lmobisocial/serialization/SerializationUtils$ByteArrayToBase64TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lmobisocial/serialization/SerializationUtils$ByteArrayToBase64TypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)[B
    .registers 6
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .registers 5

    .prologue
    .line 24
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lmobisocial/serialization/SerializationUtils$ByteArrayToBase64TypeAdapter;->serialize([BLjava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize([BLjava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .registers 6
    .param p1, "src"    # [B
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 31
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
