import type { AppProps } from "next/app";
import Layout from "@/components/layout";
import { ToastContainer } from "react-toastify";
import "@/styles/globals.css";
import "react-toastify/dist/ReactToastify.css";
import Web3ModalProvider from "@/components/Web3ModelProvider";


export default function App({ Component, pageProps }: AppProps) {
  return (
    <Web3ModalProvider>
      <Layout>
        <ToastContainer />
        <Component {...pageProps} />
      </Layout>
    </Web3ModalProvider>

  );
}
