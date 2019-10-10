.class Lmiui/telephony/CloudTelephonyManager$AsyncFuture;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/CloudTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 359
    new-instance v0, Lmiui/telephony/CloudTelephonyManager$AsyncFuture$1;

    invoke-direct {v0}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->set(Ljava/lang/Object;)V

    return-void
.end method
