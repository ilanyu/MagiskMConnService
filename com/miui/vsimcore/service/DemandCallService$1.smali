.class Lcom/miui/vsimcore/service/DemandCallService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/service/DemandCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final STATE_ACQUIRED:I

.field private final STATE_IDLE:I

.field private state:I

.field final synthetic this$0:Lcom/miui/vsimcore/service/DemandCallService;


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/service/DemandCallService;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x1

    .line 146
    iput p1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->STATE_IDLE:I

    const/4 v0, 0x2

    .line 147
    iput v0, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->STATE_ACQUIRED:I

    .line 149
    iput p1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->state:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const-string v0, "VSC-DemandCallService"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_8a

    goto :goto_89

    .line 173
    :pswitch_2c
    iget-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    const-string v0, "com.xiaomi.mimobile.cloudsim"

    # invokes: Lcom/miui/vsimcore/service/DemandCallService;->checkAppisRun(Ljava/lang/String;)Z
    invoke-static {p1, v0}, Lcom/miui/vsimcore/service/DemandCallService;->access$500(Lcom/miui/vsimcore/service/DemandCallService;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_89

    .line 174
    iget-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # invokes: Lcom/miui/vsimcore/service/DemandCallService;->closeSolt()V
    invoke-static {p1}, Lcom/miui/vsimcore/service/DemandCallService;->access$600(Lcom/miui/vsimcore/service/DemandCallService;)V

    goto :goto_89

    .line 165
    :pswitch_3c
    iget p1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->state:I

    if-ne p1, v1, :cond_48

    .line 166
    iput v2, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->state:I

    .line 167
    iget-object p1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # invokes: Lcom/miui/vsimcore/service/DemandCallService;->releaseNetwork()V
    invoke-static {p1}, Lcom/miui/vsimcore/service/DemandCallService;->access$400(Lcom/miui/vsimcore/service/DemandCallService;)V

    goto :goto_89

    :cond_48
    const-string p1, "VSC-DemandCallService"

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: MSG_RELEASE_NETWORK fail ,stete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 156
    :pswitch_61
    iget v0, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->state:I

    if-ne v0, v2, :cond_71

    .line 157
    iput v1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->state:I

    .line 158
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->this$0:Lcom/miui/vsimcore/service/DemandCallService;

    # invokes: Lcom/miui/vsimcore/service/DemandCallService;->acquireNetwork(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/miui/vsimcore/service/DemandCallService;->access$300(Lcom/miui/vsimcore/service/DemandCallService;Ljava/lang/String;)V

    goto :goto_89

    :cond_71
    const-string p1, "VSC-DemandCallService"

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: MSG_ACQUIRE_NETWORK fail ,stete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/vsimcore/service/DemandCallService$1;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_61
        :pswitch_3c
        :pswitch_2c
    .end packed-switch
.end method
