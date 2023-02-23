#include <jni.h>
#include <string>
#include <unistd.h>
#include <boost/filesystem.hpp>
#include <boost/filesystem/path.hpp>


namespace fs = boost::filesystem;

extern "C" JNIEXPORT void JNICALL
Java_com_example_myapplication_MainActivity_copyFileRange(JNIEnv *env, jobject, jstring source,jstring destination)
{

	const char *sourcePtr = env->GetStringUTFChars(source, nullptr);
	const char *destPtr = env->GetStringUTFChars(destination, nullptr);


	auto srcPath = fs::path(sourcePtr);
	auto dstPath = fs::path(destPtr);

	fs::copy_file(srcPath, dstPath);

	env->ReleaseStringUTFChars(source, sourcePtr);
	env->ReleaseStringUTFChars(destination, destPtr);
}