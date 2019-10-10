.class Lcn/kuaipan/android/http/NetCacheManager$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/kuaipan/android/http/j;-><init>(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcn/kuaipan/android/http/j;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/http/j;Ljava/io/File;)V
    .registers 3

    .line 55
    iput-object p1, p0, Lcn/kuaipan/android/http/NetCacheManager$1;->b:Lcn/kuaipan/android/http/j;

    iput-object p2, p0, Lcn/kuaipan/android/http/NetCacheManager$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcn/kuaipan/android/http/NetCacheManager$1;->a:Ljava/io/File;

    invoke-static {v0}, Lcn/kuaipan/android/utils/c;->a(Ljava/io/File;)Z

    return-void
.end method
