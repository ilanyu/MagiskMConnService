.class Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;
.super Lcn/kuaipan/android/utils/SyncAccessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/upload/UploadTaskStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/kuaipan/android/kss/upload/UploadTaskStore;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/kss/upload/UploadTaskStore;Landroid/os/Looper;)V
    .registers 3

    .line 275
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->a:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-direct {p0, p2}, Lcn/kuaipan/android/utils/SyncAccessor;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_7e

    .line 310
    invoke-super {p0, p1, p2}, Lcn/kuaipan/android/utils/SyncAccessor;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_7d

    .line 298
    :pswitch_9
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 300
    iget-object p2, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->a:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {p2}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object p2

    invoke-static {}, Lcn/kuaipan/android/utils/l;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x516bc00

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->a(J)V

    .line 303
    :try_start_22
    iget-object p2, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->a:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {p2}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object p2

    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->a:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {v0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->b(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/b;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->a(ILcn/kuaipan/android/kss/b;)Lcn/kuaipan/android/kss/upload/b;

    move-result-object p1
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_7d

    :catch_33
    move-exception p1

    const-string p2, "UploadTaskStore"

    const-string v0, "Meet exception when parser kss from db"

    .line 305
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    .line 293
    :pswitch_3c
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 294
    iget-object p2, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->a:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {p2}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->a(I)Lcn/kuaipan/android/kss/upload/f;

    move-result-object p1

    goto :goto_7d

    .line 288
    :pswitch_4f
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 289
    iget-object p2, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->a:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {p2}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->b(I)V

    goto :goto_7c

    .line 281
    :pswitch_61
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x1

    .line 282
    aget-object v0, p2, v0

    check-cast v0, Lcn/kuaipan/android/kss/upload/b;

    const/4 v1, 0x2

    .line 283
    aget-object p2, p2, v1

    check-cast p2, Lcn/kuaipan/android/kss/upload/f;

    .line 284
    iget-object v1, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;->a:Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    invoke-static {v1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->a(ILcn/kuaipan/android/kss/upload/b;Lcn/kuaipan/android/kss/upload/f;)V

    :goto_7c
    const/4 p1, 0x0

    :goto_7d
    return-object p1

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_61
        :pswitch_4f
        :pswitch_3c
        :pswitch_9
    .end packed-switch
.end method
