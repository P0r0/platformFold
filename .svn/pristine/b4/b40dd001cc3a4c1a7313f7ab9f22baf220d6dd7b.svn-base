.class Lmobisocial/longdan/net/WsRpcConnection$Encoder;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Encoder"
.end annotation


# instance fields
.field allResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/net/WsRpcConnection",
            "<TTRequest;TTResponse;>.FieldPair;>;>;"
        }
    .end annotation
.end field

.field coreRequestFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field normalRequestFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">;",
            "Lmobisocial/longdan/net/WsRpcConnection",
            "<TTRequest;TTResponse;>.FieldPair;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;


# direct methods
.method public constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 17
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TTRequest;>;",
            "Ljava/lang/Class",
            "<TTResponse;>;)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$Encoder;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.Encoder;"
    .local p2, "requestContainer":Ljava/lang/Class;, "Ljava/lang/Class<TTRequest;>;"
    .local p3, "responseContainer":Ljava/lang/Class;, "Ljava/lang/Class<TTResponse;>;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->coreRequestFieldMap:Ljava/util/Map;

    .line 1037
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->allResponseMap:Ljava/util/Map;

    .line 1038
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->normalRequestFieldMap:Ljava/util/Map;

    .line 1039
    const-class v4, Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v6, :cond_32

    aget-object v1, v5, v4

    .line 1040
    .local v1, "f":Ljava/lang/reflect/Field;
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->coreRequestFieldMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1042
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_32
    const-class v4, Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v6, :cond_66

    aget-object v1, v5, v4

    .line 1043
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->allResponseMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1044
    .local v0, "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    if-nez v0, :cond_5a

    .line 1045
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->allResponseMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    :cond_5a
    new-instance v7, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8, v1}, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 1048
    .end local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_66
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_6d
    if-ge v5, v7, :cond_db

    aget-object v1, v6, v5

    .line 1049
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    const-class v4, Lmobisocial/longdan/LDProtocols$LDResponseProtocolBase;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 1050
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1051
    .local v3, "responseFields":[Ljava/lang/reflect/Field;
    array-length v8, v3

    const/4 v4, 0x0

    :goto_87
    if-ge v4, v8, :cond_d7

    aget-object v2, v3, v4

    .line 1052
    .local v2, "g":Ljava/lang/reflect/Field;
    iget-object v9, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->allResponseMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1053
    .restart local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    if-nez v0, :cond_a7

    .line 1054
    iget-object v9, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->allResponseMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :cond_a7
    new-instance v9, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;

    invoke-direct {v9, p1, v1, v2}, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 1058
    .end local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    .end local v2    # "g":Ljava/lang/reflect/Field;
    .end local v3    # "responseFields":[Ljava/lang/reflect/Field;
    :cond_b2
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->allResponseMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1059
    .restart local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    if-nez v0, :cond_ce

    .line 1060
    iget-object v4, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->allResponseMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    :cond_ce
    new-instance v4, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;

    const/4 v8, 0x0

    invoke-direct {v4, p1, v8, v1}, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    .end local v0    # "existing":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    :cond_d7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6d

    .line 1064
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_db
    invoke-virtual {p2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_e2
    if-ge v5, v7, :cond_109

    aget-object v1, v6, v5

    .line 1065
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    :goto_f0
    if-ge v4, v9, :cond_105

    aget-object v2, v8, v4

    .line 1066
    .restart local v2    # "g":Ljava/lang/reflect/Field;
    iget-object v10, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->normalRequestFieldMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    new-instance v12, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;

    invoke-direct {v12, p1, v1, v2}, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;-><init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    add-int/lit8 v4, v4, 0x1

    goto :goto_f0

    .line 1064
    .end local v2    # "g":Ljava/lang/reflect/Field;
    :cond_105
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_e2

    .line 1069
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_109
    return-void
.end method


# virtual methods
.method public decodeResponse(Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .registers 11
    .param p1, "fullResponse"    # Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/longdan/LDProtocols$LDResponseContainerBase;",
            "Ljava/lang/Class",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ">;)",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1072
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$Encoder;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.Encoder;"
    .local p2, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;"
    iget-object v5, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->allResponseMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1073
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;>;"
    if-nez v1, :cond_27

    .line 1074
    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing protocol for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1076
    :cond_27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;

    .line 1077
    .local v0, "pair":Lmobisocial/longdan/net/WsRpcConnection$FieldPair;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;"
    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;->getRootField()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1079
    .local v2, "protocolField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_50

    .line 1080
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1081
    .local v3, "protocolObj":Ljava/lang/Object;
    if-eqz v3, :cond_2b

    .line 1083
    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;->getChildField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .line 1088
    .end local v3    # "protocolObj":Ljava/lang/Object;
    .local v4, "result":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :goto_4d
    if-eqz v4, :cond_2b

    .line 1090
    return-object v4

    .line 1086
    .end local v4    # "result":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :cond_50
    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;->getChildField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .restart local v4    # "result":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    goto :goto_4d

    .line 1092
    .end local v0    # "pair":Lmobisocial/longdan/net/WsRpcConnection$FieldPair;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;"
    .end local v2    # "protocolField":Ljava/lang/reflect/Field;
    .end local v4    # "result":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :cond_5b
    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response not found. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public encodeCoreRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "objToEncode"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Ljava/lang/Object;",
            ">(",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            "Ljava/lang/Class",
            "<TTRequest;>;)TTRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 1118
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$Encoder;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.Encoder;"
    .local p2, "requestClass":Ljava/lang/Class;, "Ljava/lang/Class<TTRequest;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 1119
    .local v1, "instance":Ljava/lang/Object;, "TTRequest;"
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->coreRequestFieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1120
    return-object v1

    .line 1121
    .end local v1    # "instance":Ljava/lang/Object;, "TTRequest;"
    :catch_14
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/InstantiationException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public encodeRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;
    .registers 8
    .param p1, "request"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
            ")TTRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 1127
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$Encoder;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.Encoder;"
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->normalRequestFieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;

    .line 1128
    .local v1, "pair":Lmobisocial/longdan/net/WsRpcConnection$FieldPair;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.FieldPair;"
    if-nez v1, :cond_2b

    .line 1129
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing protocol for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    :cond_2b
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->requestClass:Ljava/lang/Class;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnection;->access$2400(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    .line 1132
    .local v0, "container":Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;, "TTRequest;"
    iget-object v3, v1, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;->rootField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 1133
    .local v2, "protocolObj":Ljava/lang/Object;
    iget-object v3, v1, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;->rootField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1134
    iget-object v3, v1, Lmobisocial/longdan/net/WsRpcConnection$FieldPair;->childField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1135
    return-object v0
.end method

.method public extractServerRequest(Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .registers 15
    .param p1, "fullRequest"    # Lmobisocial/longdan/LDProtocols$LDRequestContainerBase;

    .prologue
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$Encoder;, "Lmobisocial/longdan/net/WsRpcConnection<TTRequest;TTResponse;>.Encoder;"
    const/4 v8, 0x0

    .line 1096
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1097
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v10, v2

    move v9, v8

    :goto_b
    if-ge v9, v10, :cond_47

    aget-object v1, v2, v9

    .line 1099
    .local v1, "f":Ljava/lang/reflect/Field;
    :try_start_f
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1100
    .local v6, "p":Ljava/lang/Object;
    if-eqz v6, :cond_43

    instance-of v7, v6, Lmobisocial/longdan/LDProtocols$LDRequestProtocolBase;

    if-eqz v7, :cond_43

    .line 1101
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1102
    .local v4, "inners":[Ljava/lang/reflect/Field;
    array-length v11, v4

    move v7, v8

    :goto_23
    if-ge v7, v11, :cond_43

    aget-object v3, v4, v7

    .line 1103
    .local v3, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1104
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_34

    instance-of v12, v5, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    if-eqz v12, :cond_34

    .line 1105
    check-cast v5, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_37

    .line 1113
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "g":Ljava/lang/reflect/Field;
    .end local v4    # "inners":[Ljava/lang/reflect/Field;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "p":Ljava/lang/Object;
    :goto_33
    return-object v5

    .line 1102
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "g":Ljava/lang/reflect/Field;
    .restart local v4    # "inners":[Ljava/lang/reflect/Field;
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "p":Ljava/lang/Object;
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1109
    .end local v3    # "g":Ljava/lang/reflect/Field;
    .end local v4    # "inners":[Ljava/lang/reflect/Field;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "p":Ljava/lang/Object;
    :catch_37
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lmobisocial/longdan/net/WsRpcConnection$Encoder;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "Error getting field from server push"

    invoke-static {v7, v11, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1097
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_b

    .line 1113
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_47
    const/4 v5, 0x0

    goto :goto_33
.end method
