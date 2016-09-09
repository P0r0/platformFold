.class Lcom/u8/sdk/UnityU8SDKListener$1;
.super Ljava/lang/Object;
.source "UnityU8SDKListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/UnityU8SDKListener;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/UnityU8SDKListener;

.field private final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/u8/sdk/UnityU8SDKListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    iput p2, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$code:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    # getter for: Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;
    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$0(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "OnInitSuc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    # getter for: Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;
    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$0(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "SDK\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    # getter for: Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;
    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$0(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    # getter for: Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;
    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$0(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u6210\u529f,\u5230\u8d26\u65f6\u95f4\u53ef\u80fd\u7a0d\u6709\u5ef6\u8fdf"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
