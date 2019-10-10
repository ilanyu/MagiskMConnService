.class Lmiui/cloud/common/XMainThreadCallback$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XMainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiui/cloud/common/XMainThreadCallback;


# direct methods
.method constructor <init>(Lmiui/cloud/common/XMainThreadCallback;Landroid/os/Looper;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lmiui/cloud/common/XMainThreadCallback$1;->a:Lmiui/cloud/common/XMainThreadCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmiui/cloud/common/XMainThreadCallback$CallRequest;

    .line 52
    iget-object v0, p0, Lmiui/cloud/common/XMainThreadCallback$1;->a:Lmiui/cloud/common/XMainThreadCallback;

    iget-object v1, p1, Lmiui/cloud/common/XMainThreadCallback$CallRequest;->a:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lmiui/cloud/common/XMainThreadCallback$CallRequest;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lmiui/cloud/common/XMainThreadCallback;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method
